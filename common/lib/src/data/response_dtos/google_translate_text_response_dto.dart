import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_translate_text_response_dto.freezed.dart';
part 'google_translate_text_response_dto.g.dart';

@freezed
class GoogleTranslateTextResponseDto with _$GoogleTranslateTextResponseDto {
  const factory GoogleTranslateTextResponseDto({
    required List<GoogleTextTranslation> translations,
  }) = _GoogleTranslateTextResponseDto;

  const GoogleTranslateTextResponseDto._();

  factory GoogleTranslateTextResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GoogleTranslateTextResponseDtoFromJson(json);
}

@freezed
class GoogleTextTranslation with _$GoogleTextTranslation {
  const factory GoogleTextTranslation({
    required String translatedText,
    String? detectedSourceLanguage,
  }) = _GoogleTextTranslation;

  const GoogleTextTranslation._();

  factory GoogleTextTranslation.fromJson(Map<String, dynamic> json) =>
      _$GoogleTextTranslationFromJson(json);
}
