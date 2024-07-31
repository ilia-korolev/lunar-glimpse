import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_gallery_item.freezed.dart';
part 'basic_gallery_item.g.dart';

@freezed
class BasicGalleryItem with _$BasicGalleryItem {
  const factory BasicGalleryItem({
    required Date date,
    required Uri uri,
    required Uri hdUri,
    required String? copyright,
    required GalleryItemType type,
    required String title,
    required String explanation,
  }) = _BasicGalleryItem;

  factory BasicGalleryItem.fromJson(Map<String, dynamic> json) =>
      _$BasicGalleryItemFromJson(json);
}
