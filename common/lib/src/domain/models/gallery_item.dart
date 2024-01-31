import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_item.freezed.dart';
part 'gallery_item.g.dart';

enum GalleryItemType { video, image }

@freezed
class GalleryItem with _$GalleryItem {
  const factory GalleryItem({
    required Uri uri,
    required Uri hdUri,
    required Date date,
    required String title,
    required String explanation,
    required String? copyright,
    required GalleryItemType type,
    required String languageCode,
    @Default(false) bool isFavorite,
  }) = _GalleryItem;

  factory GalleryItem.fromJson(Map<String, dynamic> json) =>
      _$GalleryItemFromJson(json);
}
