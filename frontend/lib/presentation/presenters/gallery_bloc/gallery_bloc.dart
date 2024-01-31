import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_bloc.freezed.dart';
part 'gallery_event.dart';
part 'gallery_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryBloc({
    required GalleryRepository repository,
    this.pageSize = 25,
  })  : _repository = repository,
        super(
          const GalleryState(
            status: BlocStatus.initial,
          ),
        ) {
    on<GalleryFetched>(
      (event, emit) async => _fetched(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<GalleryRefreshed>(
      (event, emit) async => _refreshed(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<GalleryFavoriteToggled>(
      (event, emit) async => _favoriteToggled(emit, event.item),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<GalleryTriedAgain>(
      (event, emit) async => _triedAgain(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<GalleryItemsChanged>(
      (event, emit) async => _itemsChanged(emit, event.items),
    );

    _itemChangesListener = _repository.changes.listen((items) {
      add(GalleryEvent.itemsChanged(items: items));
    });
  }

  final GalleryRepository _repository;
  final int pageSize;

  late final StreamSubscription<List<GalleryItem>> _itemChangesListener;

  GalleryEvent? _previousEvent;

  @override
  Future<void> close() async {
    await _itemChangesListener.cancel();

    return super.close();
  }

  @override
  void onEvent(GalleryEvent event) {
    _storeEvent(event);

    super.onEvent(event);
  }

  void _storeEvent(GalleryEvent event) {
    final shouldStore = event.maybeWhen<bool>(
      triedAgain: () => false,
      orElse: () => true,
    );

    if (!shouldStore) {
      return;
    }

    _previousEvent = event;
  }

  Future<void> _fetched(Emitter<GalleryState> emit) async {
    try {
      if (state.hasReachedMax) {
        return;
      }

      emit(
        state.copyWith(
          status: BlocStatus.loading,
        ),
      );

      final response = state.items.isEmpty
          ? await _repository.getLatestItems(count: pageSize)
          : await _repository.getItems(
              endDate: state.items.last.date.yesterday,
              count: pageSize,
            );

      final items = [
        ...state.items,
        ...response,
      ] // TODO(ilia-korolev): implement a video player
          .where((m) => m.type == GalleryItemType.image)
          .toList();

      emit(
        state.copyWith(
          status: BlocStatus.success,
          items: items,
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

  Future<void> _refreshed(Emitter<GalleryState> emit) async {
    emit(
      state.copyWith(
        status: BlocStatus.loading,
        items: [],
        hasReachedMax: false,
      ),
    );

    await _fetched(emit);
  }

  Future<void> _favoriteToggled(
    Emitter<GalleryState> emit,
    GalleryItem item,
  ) async {
    try {
      await _repository.toggleFavorite(
        galleryItem: item,
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
    Emitter<GalleryState> emit,
  ) async {
    if (_previousEvent == null) {
      return;
    }

    add(_previousEvent!);
  }

  Future<void> _itemsChanged(
    Emitter<GalleryState> emit,
    List<GalleryItem> items,
  ) async {
    final changedList = state.items.map((old) {
      final changed = items.firstWhereOrNull(
        (changed) => changed.date == old.date,
      );

      return changed ?? old;
    }).toList();

    emit(state.copyWith(items: changedList));
  }
}