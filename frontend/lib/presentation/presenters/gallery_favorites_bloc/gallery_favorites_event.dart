part of 'gallery_favorites_bloc.dart';

@freezed
class GalleryFavoritesEvent with _$GalleryFavoritesEvent {
  const factory GalleryFavoritesEvent.fetched() = GalleryFavoritesFetched;

  const factory GalleryFavoritesEvent.itemUnfavorited({
    required GalleryItem item,
  }) = GalleryFavoritesItemUnfavorited;

  const factory GalleryFavoritesEvent.triedAgain() = GalleryFavoritesTriedAgain;

  const factory GalleryFavoritesEvent.itemsChanged({
    required List<GalleryItem> items,
  }) = GalleryFavoritesItemsChanged;

  const factory GalleryFavoritesEvent.appSettingsChanged({
    required AppSettings appSettings,
  }) = GalleryFavoritesAppSettingsChanged;
}
