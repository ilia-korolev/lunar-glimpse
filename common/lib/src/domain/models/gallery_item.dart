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
    required String? copyright,
    required GalleryMedia media,
    required GalleryInfo info,
    required bool isFavorite,
  }) = _GalleryItem;

  const GalleryItem._();

  factory GalleryItem.fromJson(Map<String, dynamic> json) =>
      _$GalleryItemFromJson(json);

  Uri get uri => switch (media) {
        final GalleryImage image => image.uri,
        final GalleryVideo video => video.uri,
        final GalleryOther other => other.uri,
        final GalleryEmpty _ => throw UnimplementedError(
            'trying get uri from an empty media object',
          ),
        _ => throw UnimplementedError(),
      };

  GalleryItemType get type => switch (media) {
        final GalleryImage _ => GalleryItemType.image,
        final GalleryVideo _ => GalleryItemType.video,
        final GalleryOther _ => GalleryItemType.other,
        final GalleryEmpty _ => GalleryItemType.empty,
        _ => throw UnimplementedError(),
      };
}

@Freezed(unionKey: 'type')
class GalleryMedia with _$GalleryMedia {
  const factory GalleryMedia.image({
    required Uri uri,
    required Uri hdUri,
    required Uri thumbUri,
    required double aspectRatio,
    required double aspectRatioThumb,
    required String blurHash,
    required String blurHashThumb,
  }) = GalleryImage;

  const factory GalleryMedia.video({
    required Uri uri,
  }) = GalleryVideo;

  const factory GalleryMedia.other({
    required Uri uri,
  }) = GalleryOther;

  const factory GalleryMedia.empty() = GalleryEmpty;

  factory GalleryMedia.fromJson(Map<String, dynamic> json) =>
      _$GalleryMediaFromJson(json);
}

@freezed
class GalleryInfo with _$GalleryInfo {
  const factory GalleryInfo({
    required ContentLanguage language,
    required ContentLanguage originalLanguage,
    required String title,
    required String explanation,
  }) = _GalleryInfo;

  factory GalleryInfo.fromJson(Map<String, dynamic> json) =>
      _$GalleryInfoFromJson(json);
}
