import 'package:freezed_annotation/freezed_annotation.dart';

part 'deepl_translate_text_request_dto.freezed.dart';
part 'deepl_translate_text_request_dto.g.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum DeepLFormality {
  more,
  less,
  preferMore,
  preferLess,
}

@freezed
class DeepLTranslateTextRequestDto with _$DeepLTranslateTextRequestDto {
  const factory DeepLTranslateTextRequestDto({
    @JsonKey(name: 'text') required List<String> source,
    @JsonKey(name: 'source_lang') required String sourceLanguage,
    @JsonKey(name: 'target_lang') required String targetLanguage,
    required DeepLFormality formality,
  }) = _DeepLTranslateTextRequestDto;

  const DeepLTranslateTextRequestDto._();

  factory DeepLTranslateTextRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DeepLTranslateTextRequestDtoFromJson(json);
}
