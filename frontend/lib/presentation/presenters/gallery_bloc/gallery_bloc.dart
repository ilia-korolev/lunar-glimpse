import 'dart:async';

import 'package:astro_common/astro_common.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/_export.dart';
import 'package:frontend/domain/_export.dart';
import 'package:frontend/presentation/_export.dart';

part 'gallery_bloc.freezed.dart';
part 'gallery_event.dart';
part 'gallery_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryBloc({
    required GalleryRepository galleryRepository,
    required AppSettingsRepository appSettingsRepository,
    this.pageSize = 25,
  })  : _galleryRepository = galleryRepository,
        _appSettingsRepository = appSettingsRepository,
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

    on<GalleryAppSettingsChanged>(
      (event, emit) async => _appSettingsChanged(emit, event.appSettings),
      transformer: restartable(),
    );

    _itemChangesListener = _galleryRepository.changes.listen(
      (items) {
        add(GalleryEvent.itemsChanged(items: items));
      },
    );

    _appSettingsListener = _appSettingsRepository.appSettings.listen(
      (appSettings) {
        add(GalleryEvent.appSettingsChanged(appSettings: appSettings));
      },
    );

    _language = _appSettingsRepository.getSettings().galleryLanguage;
  }

  final GalleryRepository _galleryRepository;
  final AppSettingsRepository _appSettingsRepository;
  final int pageSize;

  late GalleryItemLanguage _language;

  late final StreamSubscription<List<GalleryItem>> _itemChangesListener;
  late final StreamSubscription<AppSettings> _appSettingsListener;

  GalleryEvent? _previousEvent;

  @override
  Future<void> close() async {
    await _itemChangesListener.cancel();
    await _appSettingsListener.cancel();

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
          ? await _galleryRepository.getLatestItems(
              count: pageSize,
              language: _language,
            )
          : await _galleryRepository.getItems(
              endDate: state.items.last.date.yesterday,
              count: pageSize,
              language: _language,
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
    try {
      emit(
        state.copyWith(
          status: BlocStatus.loading,
          items: [],
          hasReachedMax: false,
        ),
      );

      final response = await _galleryRepository.getLatestItems(
        count: pageSize,
        language: _language,
      );

      final items = response
          // TODO(ilia-korolev): implement a video player
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

  Future<void> _favoriteToggled(
    Emitter<GalleryState> emit,
    GalleryItem item,
  ) async {
    try {
      await _galleryRepository.toggleFavorite(
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

  Future<void> _appSettingsChanged(
    Emitter<GalleryState> emit,
    AppSettings appSettings,
  ) async {
    if (_language != appSettings.galleryLanguage) {
      _language = appSettings.galleryLanguage;

      await _refreshed(emit);
    }
  }
}
