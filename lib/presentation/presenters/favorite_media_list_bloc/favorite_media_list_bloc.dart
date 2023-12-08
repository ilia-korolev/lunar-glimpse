import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_media_list_bloc.freezed.dart';
part 'favorite_media_list_event.dart';
part 'favorite_media_list_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

class FavoriteMediaListBloc
    extends Bloc<FavoriteMediaListEvent, FavoriteMediaListState> {
  FavoriteMediaListBloc({
    required DailyMediaRepository repository,
  })  : _repository = repository,
        super(
          const FavoriteMediaListState(
            status: BlocStatus.initial,
          ),
        ) {
    on<FavoriteMediaListFetched>(
      (event, emit) async => _fetched(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<FavoriteMediaListFavoriteRemoved>(
      (event, emit) async => _favoriteRemoved(emit, event.media),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<FavoriteMediaListTriedAgain>(
      (event, emit) async => _triedAgain(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<FavoriteMediaListMediaChanged>(
      (event, emit) async => _mediaChanged(emit, event.media),
    );

    _mediaChangesListener = _repository.changes.listen((mediaList) {
      add(FavoriteMediaListEvent.mediaChanged(mediaList));
    });
  }

  Stream<Media> get removedFavoriteStream => _removedFavoriteController.stream;

  final DailyMediaRepository _repository;

  final StreamController<Media> _removedFavoriteController =
      StreamController<Media>.broadcast();

  late final StreamSubscription<List<Media>> _mediaChangesListener;

  FavoriteMediaListEvent? _previousEvent;

  @override
  Future<void> close() async {
    await _mediaChangesListener.cancel();
    await _removedFavoriteController.close();

    return super.close();
  }

  @override
  void onEvent(FavoriteMediaListEvent event) {
    _storeEvent(event);

    super.onEvent(event);
  }

  void _storeEvent(FavoriteMediaListEvent event) {
    final shouldStore = event.maybeWhen<bool>(
      triedAgain: () => false,
      orElse: () => true,
    );

    if (!shouldStore) {
      return;
    }

    _previousEvent = event;
  }

  Future<void> _fetched(Emitter<FavoriteMediaListState> emit) async {
    try {
      emit(
        state.copyWith(
          status: BlocStatus.loading,
        ),
      );

      final response = await _repository.getFavoriteMediaList();

      final mediaList = response
          // TODO(ilia-korolev): implement a video player
          .where((m) => m.type == MediaType.image)
          .toList();

      emit(
        state.copyWith(
          status: BlocStatus.success,
          mediaList: mediaList,
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

  Future<void> _favoriteRemoved(
    Emitter<FavoriteMediaListState> emit,
    Media media,
  ) async {
    try {
      assert(
        media.isFavorite,
        'the media must be favorite',
      );

      final indexOfMedia = state.mediaList.indexOf(media);

      if (indexOfMedia == -1) {
        throw ArgumentError(
          'The media is not on the list: $media',
          'media',
        );
      }

      await _repository.toggleFavorite(
        media: media,
      );

      final updatedList = [...state.mediaList]..removeAt(indexOfMedia);

      _removedFavoriteController.add(media.copyWith(isFavorite: false));

      emit(
        state.copyWith(
          status: BlocStatus.success,
          mediaList: updatedList,
        ),
      );
    } on Exception catch (_) {
      emit(state.copyWith(status: BlocStatus.failure));
    }
  }

  Future<void> _triedAgain(
    Emitter<FavoriteMediaListState> emit,
  ) async {
    if (_previousEvent == null) {
      return;
    }

    add(_previousEvent!);
  }

  Future<void> _mediaChanged(
    Emitter<FavoriteMediaListState> emit,
    List<Media> mediaList,
  ) async {
    await _fetched(emit);
  }
}
