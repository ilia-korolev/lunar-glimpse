part of 'gallery_favorites_bloc.dart';

@freezed
class GalleryFavoritesState with _$GalleryFavoritesState {
  const factory GalleryFavoritesState({
    required BlocStatus status,
    @Default([]) List<GalleryItem> items,
  }) = _GalleryFavoritesState;

  const GalleryFavoritesState._();

  @override
  String toString() {
    return '''
GalleryFavoritesState(
    status: ${status.name},
    items.length: ${items.length},
  )''';
  }
}
