import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_translate_text_request_dto.freezed.dart';
part 'google_translate_text_request_dto.g.dart';

@freezed
class GoogleTranslateTextRequestDto with _$GoogleTranslateTextRequestDto {
  const factory GoogleTranslateTextRequestDto({
    @JsonKey(name: 'q') required List<String> source,
    @JsonKey(name: 'source') required String sourceLanguage,
    @JsonKey(name: 'target') required String targetLanguage,
  }) = _GoogleTranslateTextRequestDto;

  const GoogleTranslateTextRequestDto._();

  factory GoogleTranslateTextRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GoogleTranslateTextRequestDtoFromJson(json);
}
