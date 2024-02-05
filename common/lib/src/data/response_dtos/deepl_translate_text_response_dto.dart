import 'package:freezed_annotation/freezed_annotation.dart';

part 'deepl_translate_text_response_dto.freezed.dart';
part 'deepl_translate_text_response_dto.g.dart';

@freezed
class DeepLTranslateTextResponseDto with _$DeepLTranslateTextResponseDto {
  const factory DeepLTranslateTextResponseDto({
    required List<DeepLTextTranslation> translations,
  }) = _DeepLTranslateTextResponseDto;

  const DeepLTranslateTextResponseDto._();

  factory DeepLTranslateTextResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeepLTranslateTextResponseDtoFromJson(json);
}

@freezed
class DeepLTextTranslation with _$DeepLTextTranslation {
  const factory DeepLTextTranslation({
    required String text,
    String? detectedSourceLanguage,
  }) = _DeepLTextTranslation;

  const DeepLTextTranslation._();

  factory DeepLTextTranslation.fromJson(Map<String, dynamic> json) =>
      _$DeepLTextTranslationFromJson(json);
}
