part of 'gallery_bloc.dart';

@freezed
class GalleryEvent with _$GalleryEvent {
  const factory GalleryEvent.fetched() = GalleryFetched;

  const factory GalleryEvent.refreshed() = GalleryRefreshed;

  const factory GalleryEvent.favoriteToggled({
    required GalleryItem item,
  }) = GalleryFavoriteToggled;

  const factory GalleryEvent.triedAgain() = GalleryTriedAgain;

  const factory GalleryEvent.itemsChanged({
    required List<GalleryItem> items,
  }) = GalleryItemsChanged;

  const factory GalleryEvent.appSettingsChanged({
    required AppSettings appSettings,
  }) = GalleryAppSettingsChanged;
}
