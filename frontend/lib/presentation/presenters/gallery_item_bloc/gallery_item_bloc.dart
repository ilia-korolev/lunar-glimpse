import 'dart:async';

import 'package:astro_common/astro_common.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_item_bloc.freezed.dart';
part 'gallery_item_event.dart';
part 'gallery_item_state.dart';

class GalleryItemBloc extends Bloc<GalleryItemEvent, GalleryItemState> {
  GalleryItemBloc({
    required GalleryRepository galleryRepository,
    required AppSettingsRepository appSettingsRepository,
  })  : _galleryRepository = galleryRepository,
        _appSettingsRepository = appSettingsRepository,
        super(const GalleryItemState.initial()) {
    on<GalleryItemFetched>(
      (event, emit) async => _fetched(emit, event.date),
    );

    on<GalleryItemFavoriteToggled>(
      (event, emit) async => _favoriteToggled(emit),
    );

    on<GalleryItemTriedAgain>(
      (event, emit) async => _triedAgain(emit),
    );

    on<GalleryItemItemsChanged>(
      (event, emit) async => _itemsChanged(emit, event.items),
    );

    on<GalleryItemAppSettingsChanged>(
      (event, emit) async => _appSettingsChanged(emit, event.appSettings),
    );

    _itemChangesListener = _galleryRepository.changes.listen(
      (items) {
        add(GalleryItemEvent.itemsChanged(items: items));
      },
    );

    _appSettingsListener = _appSettingsRepository.appSettings.listen(
      (appSettings) {
        add(
          GalleryItemEvent.appSettingsChanged(appSettings: appSettings),
        );
      },
    );

    _language = _appSettingsRepository.getSettings().language;
  }

  final GalleryRepository _galleryRepository;
  final AppSettingsRepository _appSettingsRepository;

  late GalleryItemLanguage _language;

  late final StreamSubscription<List<GalleryItem>> _itemChangesListener;
  late final StreamSubscription<AppSettings> _appSettingsListener;

  GalleryItemEvent? _previousEvent;

  @override
  Future<void> close() async {
    await _itemChangesListener.cancel();
    await _appSettingsListener.cancel();

    return super.close();
  }

  @override
  void onEvent(GalleryItemEvent event) {
    _storeEvent(event);

    super.onEvent(event);
  }

  void _storeEvent(GalleryItemEvent event) {
    final shouldStore = event.maybeWhen<bool>(
      triedAgain: () => false,
      orElse: () => true,
    );

    if (!shouldStore) {
      return;
    }

    _previousEvent = event;
  }

  Future<void> _fetched(Emitter<GalleryItemState> emit, Date date) async {
    emit(const GalleryItemState.loading());

    try {
      final item = await _galleryRepository.getItem(
        date: date,
        language: _language,
      );

      emit(GalleryItemState.success(item: item));
    } on Exception catch (e) {
      emit(GalleryItemState.failure(message: e.toString()));
    }
  }

  Future<void> _favoriteToggled(
    Emitter<GalleryItemState> emit,
  ) async {
    try {
      final galleryItem = state.maybeWhen(
        success: (item) => item,
        orElse: () => throw UnsupportedError(
          'Only a success state is supported to perform this operation',
        ),
      );

      await _galleryRepository.toggleFavorite(
        galleryItem: galleryItem,
      );
    } on Exception catch (e) {
      emit(GalleryItemState.failure(message: e.toString()));
    }
  }

  Future<void> _triedAgain(
    Emitter<GalleryItemState> emit,
  ) async {
    if (_previousEvent == null) {
      return;
    }

    add(_previousEvent!);
  }

  Future<void> _itemsChanged(
    Emitter<GalleryItemState> emit,
    List<GalleryItem> items,
  ) async {
    state.whenOrNull(
      success: (item) {
        final changedItem = items.firstWhereOrNull(
          (m) => item.date == m.date,
        );

        if (changedItem == null) {
          return;
        }

        emit(
          GalleryItemState.success(
            item: changedItem,
          ),
        );
      },
    );
  }

  void _appSettingsChanged(
    Emitter<GalleryItemState> emit,
    AppSettings appSettings,
  ) {
    if (_language != appSettings.language) {
      _language = appSettings.language;

      state.whenOrNull(
        success: (item) => _fetched(emit, item.date),
      );
    }
  }
}
