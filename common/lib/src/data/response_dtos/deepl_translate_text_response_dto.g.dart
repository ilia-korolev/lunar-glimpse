// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'deepl_translate_text_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeepLTranslateTextResponseDtoImpl
    _$$DeepLTranslateTextResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$DeepLTranslateTextResponseDtoImpl(
          translations: (json['translations'] as List<dynamic>)
              .map((e) =>
                  DeepLTextTranslation.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$DeepLTranslateTextResponseDtoImplToJson(
        _$DeepLTranslateTextResponseDtoImpl instance) =>
    <String, dynamic>{
      'translations': instance.translations.map((e) => e.toJson()).toList(),
    };

_$DeepLTextTranslationImpl _$$DeepLTextTranslationImplFromJson(
        Map<String, dynamic> json) =>
    _$DeepLTextTranslationImpl(
      text: json['text'] as String,
      detectedSourceLanguage: json['detectedSourceLanguage'] as String?,
    );

Map<String, dynamic> _$$DeepLTextTranslationImplToJson(
        _$DeepLTextTranslationImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'detectedSourceLanguage': instance.detectedSourceLanguage,
    };
