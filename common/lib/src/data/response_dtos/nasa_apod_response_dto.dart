import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nasa_apod_response_dto.freezed.dart';
part 'nasa_apod_response_dto.g.dart';

@freezed
class NasaApodResponseDto with _$NasaApodResponseDto {
  @JsonSerializable(includeIfNull: false)
  const factory NasaApodResponseDto({
    required Date date,
    required String explanation,
    required String title,
    required String url,
    @JsonKey(name: 'media_type') required GalleryItemType mediaType,
    String? copyright,
    @JsonKey(name: 'hdurl') String? hdUrl,
  }) = _NasaApodResponseDto;

  const NasaApodResponseDto._();

  factory NasaApodResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NasaApodResponseDtoFromJson(json);

  /// Throws a [FormatException] if the dto cannot be converted.
  GalleryItem toModel() {
    return GalleryItem(
      date: date,
      uri: Uri.parse(url),
      hdUri: Uri.parse(hdUrl ?? url),
      copyright: copyright,
      type: mediaType,
      isFavorite: false,
      language: GalleryItemLanguage.english,
      originalLanguage: GalleryItemLanguage.english,
      title: title,
      explanation: explanation,
    );
  }
}
