import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_media_list_bloc.freezed.dart';
part 'daily_media_list_event.dart';
part 'daily_media_list_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

class DailyMediaListBloc
    extends Bloc<DailyMediaListEvent, DailyMediaListState> {
  DailyMediaListBloc({
    required DailyMediaRepository repository,
    this.pageSize = 25,
  })  : _repository = repository,
        super(
          const DailyMediaListState(
            status: BlocStatus.initial,
          ),
        ) {
    on<DailyMediaListFetched>(
      (event, emit) async => _fetched(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<DailyMediaListRefreshed>(
      (event, emit) async => _refreshed(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<DailyMediaListFavoriteToggled>(
      (event, emit) async => _favoriteToggled(emit, event.media),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<DailyMediaListTriedAgain>(
      (event, emit) async => _triedAgain(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<DailyMediaListMediaChanged>(
      (event, emit) async => _mediaChanged(emit, event.media),
    );

    _mediaChangesListener = _repository.changes.listen((mediaList) {
      add(DailyMediaListEvent.mediaChanged(mediaList));
    });
  }

  final DailyMediaRepository _repository;
  final int pageSize;

  late final StreamSubscription<List<Media>> _mediaChangesListener;

  DailyMediaListEvent? _previousEvent;

  @override
  Future<void> close() async {
    await _mediaChangesListener.cancel();

    return super.close();
  }

  @override
  void onEvent(DailyMediaListEvent event) {
    _storeEvent(event);

    super.onEvent(event);
  }

  void _storeEvent(DailyMediaListEvent event) {
    final shouldStore = event.maybeWhen<bool>(
      triedAgain: () => false,
      orElse: () => true,
    );

    if (!shouldStore) {
      return;
    }

    _previousEvent = event;
  }

  Future<void> _fetched(Emitter<DailyMediaListState> emit) async {
    try {
      if (state.hasReachedMax) {
        return;
      }

      emit(
        state.copyWith(
          status: BlocStatus.loading,
        ),
      );

      final response = state.mediaList.isEmpty
          ? await _repository.getLatestMedia(count: pageSize)
          : await _repository.getDailyMediaList(
              endDate: state.mediaList.last.date.yesterday,
              count: pageSize,
            );

      final mediaList = [
        ...state.mediaList,
        ...response,
      ] // TODO(ilia-korolev): implement a video player
          .where((m) => m.type == MediaType.image)
          .toList();

      emit(
        state.copyWith(
          status: BlocStatus.success,
          mediaList: mediaList,
          hasReachedMax: response.length < pageSize,
        ),
      );
    } on Exception catch (_) {
      emit(
        state.copyWith(
          status: BlocStatus.failure,
        ),
      );
    }
  }

  Future<void> _refreshed(Emitter<DailyMediaListState> emit) async {
    emit(
      state.copyWith(
        status: BlocStatus.loading,
        mediaList: [],
        hasReachedMax: false,
      ),
    );

    await _fetched(emit);
  }

  Future<void> _favoriteToggled(
    Emitter<DailyMediaListState> emit,
    Media media,
  ) async {
    try {
      final indexOfMedia = state.mediaList.indexOf(media);

      if (indexOfMedia == -1) {
        throw ArgumentError('The media is not on the list: $media', 'media');
      }

      await _repository.toggleFavorite(
        media: media,
      );

      emit(
        state.copyWith(
          status: BlocStatus.success,
        ),
      );
    } on Exception catch (_) {
      emit(state.copyWith(status: BlocStatus.failure));
    }
  }

  Future<void> _triedAgain(
    Emitter<DailyMediaListState> emit,
  ) async {
    if (_previousEvent == null) {
      return;
    }

    add(_previousEvent!);
  }

  Future<void> _mediaChanged(
    Emitter<DailyMediaListState> emit,
    List<Media> mediaList,
  ) async {
    final changedList = state.mediaList.map((old) {
      final changed = mediaList.firstWhereOrNull(
        (changed) => changed.date == old.date,
      );

      return changed ?? old;
    }).toList();

    emit(state.copyWith(mediaList: changedList));
  }
}
