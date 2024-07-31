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
    @JsonKey(name: 'media_type') required GalleryItemType mediaType,
    String? copyright,
    String? url,
    @JsonKey(name: 'hdurl') String? hdUrl,
  }) = _NasaApodResponseDto;

  const NasaApodResponseDto._();

  factory NasaApodResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NasaApodResponseDtoFromJson(json);

  /// Throws a [FormatException] if the dto cannot be converted.
  BasicGalleryItem toModel() {
    final urlOrDefault =
        url ?? 'https://apod.nasa.gov/apod/ap${date.format('yyMMdd')}.html';

    return BasicGalleryItem(
      date: date,
      copyright: copyright,
      uri: Uri.parse(urlOrDefault),
      hdUri: Uri.parse(hdUrl ?? urlOrDefault),
      title: title,
      explanation: explanation,
      type: mediaType,
    );
  }
}
