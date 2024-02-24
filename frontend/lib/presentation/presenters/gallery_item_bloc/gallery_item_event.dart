part of 'gallery_item_bloc.dart';

@freezed
class GalleryItemEvent with _$GalleryItemEvent {
  const factory GalleryItemEvent.fetched({
    required Date date,
  }) = GalleryItemFetched;

  const factory GalleryItemEvent.favoriteToggled() = GalleryItemFavoriteToggled;

  const factory GalleryItemEvent.triedAgain() = GalleryItemTriedAgain;

  const factory GalleryItemEvent.itemsChanged({
    required List<GalleryItem> items,
  }) = GalleryItemItemsChanged;

  const factory GalleryItemEvent.appSettingsChanged({
    required AppSettings appSettings,
  }) = GalleryItemAppSettingsChanged;
}
