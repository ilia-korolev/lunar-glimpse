// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'google_translate_text_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleTranslateTextResponseDtoImpl
    _$$GoogleTranslateTextResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$GoogleTranslateTextResponseDtoImpl(
          translations: (json['translations'] as List<dynamic>)
              .map((e) =>
                  GoogleTextTranslation.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GoogleTranslateTextResponseDtoImplToJson(
        _$GoogleTranslateTextResponseDtoImpl instance) =>
    <String, dynamic>{
      'translations': instance.translations.map((e) => e.toJson()).toList(),
    };

_$GoogleTextTranslationImpl _$$GoogleTextTranslationImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleTextTranslationImpl(
      translatedText: json['translatedText'] as String,
      detectedSourceLanguage: json['detectedSourceLanguage'] as String?,
    );

Map<String, dynamic> _$$GoogleTextTranslationImplToJson(
        _$GoogleTextTranslationImpl instance) =>
    <String, dynamic>{
      'translatedText': instance.translatedText,
      'detectedSourceLanguage': instance.detectedSourceLanguage,
    };
