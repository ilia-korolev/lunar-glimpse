import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_media_bloc.freezed.dart';
part 'daily_media_event.dart';
part 'daily_media_state.dart';

class DailyMediaBloc extends Bloc<DailyMediaEvent, DailyMediaState> {
  DailyMediaBloc({
    required DailyMediaRepository repository,
  })  : _repository = repository,
        super(const DailyMediaState.initial()) {
    on<DailyMediaFetched>(
      (event, emit) async => _fetched(emit, event.date),
    );

    on<DailyMediaFavoriteToggled>(
      (event, emit) async => _favoriteToggled(emit),
    );

    on<DailyMediaTriedAgain>(
      (event, emit) async => _triedAgain(emit),
    );

    on<DailyMediaMediaChanged>(
      (event, emit) async => _mediaChanged(emit, event.media),
    );

    _mediaChangesListener = _repository.changes.listen(
      (mediaList) {
        add(DailyMediaEvent.mediaChanged(mediaList));
      },
    );
  }

  final DailyMediaRepository _repository;

  late final StreamSubscription<List<Media>> _mediaChangesListener;

  DailyMediaEvent? _previousEvent;

  @override
  Future<void> close() async {
    await _mediaChangesListener.cancel();

    return super.close();
  }

  @override
  void onEvent(DailyMediaEvent event) {
    _storeEvent(event);

    super.onEvent(event);
  }

  void _storeEvent(DailyMediaEvent event) {
    final shouldStore = event.maybeWhen<bool>(
      triedAgain: () => false,
      orElse: () => true,
    );

    if (!shouldStore) {
      return;
    }

    _previousEvent = event;
  }

  Future<void> _fetched(Emitter<DailyMediaState> emit, Date date) async {
    emit(const DailyMediaState.loading());

    try {
      final media = await _repository.getDailyMedia(date: date);

      emit(DailyMediaState.success(media: media));
    } on Exception catch (e) {
      emit(DailyMediaState.failure(message: e.toString()));
    }
  }

  Future<void> _favoriteToggled(
    Emitter<DailyMediaState> emit,
  ) async {
    try {
      final media = state.maybeWhen(
        success: (media) => media,
        orElse: () => throw UnsupportedError(
          'Only a success state is supported to perform this operation',
        ),
      );

      await _repository.toggleFavorite(
        media: media,
      );
    } on Exception catch (e) {
      emit(DailyMediaState.failure(message: e.toString()));
    }
  }

  Future<void> _triedAgain(
    Emitter<DailyMediaState> emit,
  ) async {
    if (_previousEvent == null) {
      return;
    }

    add(_previousEvent!);
  }

  Future<void> _mediaChanged(
    Emitter<DailyMediaState> emit,
    List<Media> mediaList,
  ) async {
    state.whenOrNull(
      success: (media) {
        final changedMedia = mediaList.firstWhereOrNull(
          (m) => media.date == m.date,
        );

        if (changedMedia == null) {
          return;
        }

        emit(
          DailyMediaState.success(
            media: changedMedia,
          ),
        );
      },
    );
  }
}
