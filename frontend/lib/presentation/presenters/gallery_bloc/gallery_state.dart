part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState({
    required BlocStatus status,
    @Default([]) List<GalleryItem> items,
    @Default(false) bool hasReachedMax,
  }) = _GalleryState;

  const GalleryState._();

  @override
  String toString() {
    return '''
GalleryState(
    status: ${status.name},
    items.length: ${items.length},
    hasReachedMax: $hasReachedMax,
  )''';
  }
}
