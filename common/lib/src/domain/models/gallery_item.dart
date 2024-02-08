import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_item.freezed.dart';
part 'gallery_item.g.dart';

enum GalleryItemType { video, image }

enum GalleryItemLanguage {
  english,
  japanese,
  russian,
  chinese;

  String get languageCode => switch (this) {
        GalleryItemLanguage.english => 'en',
        GalleryItemLanguage.japanese => 'ja',
        GalleryItemLanguage.russian => 'ru',
        GalleryItemLanguage.chinese => 'zh',
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
    required GalleryItemLanguage language,
    required GalleryItemLanguage originalLanguage,
    required String title,
    required String explanation,
  }) = _GalleryItem;

  factory GalleryItem.fromJson(Map<String, dynamic> json) =>
      _$GalleryItemFromJson(json);
}
