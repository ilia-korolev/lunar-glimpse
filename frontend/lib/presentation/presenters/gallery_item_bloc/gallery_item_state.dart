part of 'gallery_item_bloc.dart';

@freezed
class GalleryItemState with _$GalleryItemState {
  const factory GalleryItemState.initial() = _Initial;

  const factory GalleryItemState.loading() = _Loading;

  const factory GalleryItemState.success({
    required GalleryItem item,
  }) = _Success;

  const factory GalleryItemState.failure({
    required String message,
  }) = _Failure;

  const GalleryItemState._();

  @override
  String toString() {
    return when(
      initial: () {
        return 'GalleryItemState.initial()';
      },
      loading: () {
        return 'GalleryItemState.loading()';
      },
      success: (GalleryItem item) {
        return '''
GalleryItemState.success(
    date: ${item.date},
    title: ${item.info.title},
  )''';
      },
      failure: (String message) {
        return '''
GalleryItemState.failure(
    message: $message,
  )''';
      },
    );
  }
}
