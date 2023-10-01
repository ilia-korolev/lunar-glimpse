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
    on<DailyMediaEvent>(
      (event, emit) async {
        await event.when(
          fetched: () async => _fetched(emit),
          refreshed: () async => _refreshed(emit),
          favoriteToggled: (media) async => _favoriteToggled(emit, media),
        );
      },
      transformer: throttleDroppableTransformer(_throttleDuration),
    );
  }

  final DailyMediaRepository _repository;
  final int pageSize;

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

      final page = state.mediaList.isEmpty ? 0 : state.page + 1;

      final response = await _repository.getDailyMedia(
        page: page,
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
          page: page,
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
}
