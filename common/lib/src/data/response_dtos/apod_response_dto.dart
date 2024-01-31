import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apod_response_dto.freezed.dart';
part 'apod_response_dto.g.dart';

@freezed
class ApodResponseDto with _$ApodResponseDto {
  @JsonSerializable(includeIfNull: false)
  const factory ApodResponseDto({
    required Date date,
    required String explanation,
    required String title,
    required String url,
    @JsonKey(name: 'media_type') required GalleryItemType mediaType,
    String? copyright,
    @JsonKey(name: 'hdurl') String? hdUrl,
    @Default('en') String languageCode,
  }) = _ApodResponseDto;

  const ApodResponseDto._();

  factory ApodResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApodResponseDtoFromJson(json);

  /// Throws a [FormatException] if the dto cannot be converted.
  GalleryItem toModel() {
    return GalleryItem(
      copyright: copyright,
      date: date,
      explanation: explanation,
      title: title,
      uri: Uri.parse(url),
      hdUri: Uri.parse(hdUrl ?? url),
      type: mediaType,
      languageCode: languageCode,
    );
  }
}
