import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_item.freezed.dart';
part 'gallery_item.g.dart';

enum GalleryItemType {
  video,
  image,
  other,
  empty;

  static GalleryItemType fromString(String type) => switch (type) {
        'video' => GalleryItemType.video,
        'image' => GalleryItemType.image,
        'other' => GalleryItemType.other,
        'empty' => GalleryItemType.empty,
        _ => throw UnsupportedError(
            'The type is not supported: $type',
          ),
      };
}

@freezed
class GalleryItem with _$GalleryItem {
  const factory GalleryItem({
    required Date date,
    required Uri uri,
    required Uri hdUri,
    required String? copyright,
    required GalleryItemType type,
    required bool isFavorite,
    required ContentLanguage language,
    required ContentLanguage originalLanguage,
    required String title,
    required String explanation,
  }) = _GalleryItem;

  factory GalleryItem.fromJson(Map<String, dynamic> json) =>
      _$GalleryItemFromJson(json);
}
