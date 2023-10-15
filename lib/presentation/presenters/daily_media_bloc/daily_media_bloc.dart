import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_media_bloc.freezed.dart';
part 'daily_media_event.dart';
part 'daily_media_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

class DailyMediaBloc extends Bloc<DailyMediaEvent, DailyMediaState> {
  DailyMediaBloc({
    required DailyMediaRepository repository,
    this.pageSize = 25,
  })  : _repository = repository,
        super(
          const DailyMediaState(
            status: DailyMediaStatus.initial,
          ),
        ) {
    on<DailyMediaFetched>(
      (event, emit) async => _fetched(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<DailyMediaRefreshed>(
      (event, emit) async => _refreshed(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<DailyMediaFavoriteToggled>(
      (event, emit) async => _favoriteToggled(emit, event.media),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<DailyMediaTriedAgain>(
      (event, emit) async => _triedAgain(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );
  }

  final DailyMediaRepository _repository;
  final int pageSize;

  DailyMediaEvent? _previousEvent;

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

  Future<void> _fetched(Emitter<DailyMediaState> emit) async {
    try {
      if (state.hasReachedMax) {
        return;
      }

      emit(
        state.copyWith(
          status: DailyMediaStatus.loading,
        ),
      );

      final response = state.mediaList.isEmpty
          ? await _repository.getLatestMedia(count: pageSize)
          : await _repository.getDailyMedia(
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
          status: DailyMediaStatus.success,
          mediaList: mediaList,
          hasReachedMax: response.length < pageSize,
        ),
      );
    } on Exception catch (_) {
      emit(
        state.copyWith(
          status: DailyMediaStatus.failure,
        ),
      );
    }
  }

  Future<void> _refreshed(Emitter<DailyMediaState> emit) async {
    emit(
      state.copyWith(
        status: DailyMediaStatus.loading,
        mediaList: [],
        hasReachedMax: false,
      ),
    );

    await _fetched(emit);
  }

  Future<void> _favoriteToggled(
    Emitter<DailyMediaState> emit,
    Media media,
  ) async {
    try {
      emit(
        state.copyWith(
          status: DailyMediaStatus.loading,
        ),
      );

      final indexOfMedia = state.mediaList.indexOf(media);

      if (indexOfMedia == -1) {
        throw ArgumentError('The media is not on the list: $media', 'media');
      }

      final updatedMedia = await _repository.toggleFavorite(
        media: media,
      );

      final updatedMediaList = List.of(state.mediaList)
        ..[indexOfMedia] = updatedMedia;

      emit(
        state.copyWith(
          status: DailyMediaStatus.success,
          mediaList: updatedMediaList,
        ),
      );
    } on Exception catch (_) {
      emit(state.copyWith(status: DailyMediaStatus.failure));
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
}
