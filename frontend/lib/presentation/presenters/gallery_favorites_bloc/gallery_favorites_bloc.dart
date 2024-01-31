import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_favorites_bloc.freezed.dart';
part 'gallery_favorites_event.dart';
part 'gallery_favorites_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

class GalleryFavoritesBloc
    extends Bloc<GalleryFavoritesEvent, GalleryFavoritesState> {
  GalleryFavoritesBloc({
    required GalleryRepository repository,
  })  : _repository = repository,
        super(
          const GalleryFavoritesState(
            status: BlocStatus.initial,
          ),
        ) {
    on<GalleryFavoritesFetched>(
      (event, emit) async => _fetched(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<GalleryFavoritesItemUnfavorited>(
      (event, emit) async => _favoriteRemoved(emit, event.item),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<GalleryFavoritesTriedAgain>(
      (event, emit) async => _triedAgain(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<GalleryFavoritesItemsChanged>(
      (event, emit) async => _itemsChanged(emit, event.items),
    );

    _itemChangesListener = _repository.changes.listen((items) {
      add(GalleryFavoritesEvent.itemsChanged(items: items));
    });
  }

  Stream<GalleryItem> get removedFavoriteStream =>
      _removedFavoriteController.stream;

  final GalleryRepository _repository;

  final StreamController<GalleryItem> _removedFavoriteController =
      StreamController<GalleryItem>.broadcast();

  late final StreamSubscription<List<GalleryItem>> _itemChangesListener;

  GalleryFavoritesEvent? _previousEvent;

  @override
  Future<void> close() async {
    await _itemChangesListener.cancel();
    await _removedFavoriteController.close();

    return super.close();
  }

  @override
  void onEvent(GalleryFavoritesEvent event) {
    _storeEvent(event);

    super.onEvent(event);
  }

  void _storeEvent(GalleryFavoritesEvent event) {
    final shouldStore = event.maybeWhen<bool>(
      triedAgain: () => false,
      orElse: () => true,
    );

    if (!shouldStore) {
      return;
    }

    _previousEvent = event;
  }

  Future<void> _fetched(Emitter<GalleryFavoritesState> emit) async {
    try {
      emit(
        state.copyWith(
          status: BlocStatus.loading,
        ),
      );

      final response = await _repository.getFavorites();

      final items = response
          // TODO(ilia-korolev): implement a video player
          .where((m) => m.type == GalleryItemType.image)
          .toList();

      emit(
        state.copyWith(
          status: BlocStatus.success,
          items: items,
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
    Emitter<GalleryFavoritesState> emit,
    GalleryItem item,
  ) async {
    try {
      assert(
        item.isFavorite,
        'the item must be favorite',
      );

      final indexOfItem = state.items.indexOf(item);

      if (indexOfItem == -1) {
        throw ArgumentError(
          'The item is not on the list: $item',
          'item',
        );
      }

      await _repository.toggleFavorite(
        galleryItem: item,
      );

      final updatedList = [...state.items]..removeAt(indexOfItem);

      _removedFavoriteController.add(item.copyWith(isFavorite: false));

      emit(
        state.copyWith(
          status: BlocStatus.success,
          items: updatedList,
        ),
      );
    } on Exception catch (_) {
      emit(state.copyWith(status: BlocStatus.failure));
    }
  }

  Future<void> _triedAgain(
    Emitter<GalleryFavoritesState> emit,
  ) async {
    if (_previousEvent == null) {
      return;
    }

    add(_previousEvent!);
  }

  Future<void> _itemsChanged(
    Emitter<GalleryFavoritesState> emit,
    List<GalleryItem> items,
  ) async {
    await _fetched(emit);
  }
}