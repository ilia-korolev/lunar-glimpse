import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apod_response_dto.freezed.dart';
part 'apod_response_dto.g.dart';

@freezed
class ApodResponseDto with _$ApodResponseDto {
  @JsonSerializable(includeIfNull: false)
  const factory ApodResponseDto({
    @DateConverter() required Date date,
    required String explanation,
    required String title,
    required String url,
    @JsonKey(name: 'media_type') required MediaType mediaType,
    String? copyright,
    @JsonKey(name: 'hdurl') String? hdUrl,
  }) = _ApodResponseDto;

  const ApodResponseDto._();

  factory ApodResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApodResponseDtoFromJson(json);

  /// Throws a [FormatException] if the dto cannot be converted.
  Media toModel() {
    return Media(
      copyright: copyright,
      date: date,
      explanation: explanation,
      title: title,
      uri: Uri.parse(url),
      hdUri: Uri.parse(hdUrl ?? url),
      type: mediaType,
    );
  }
}
