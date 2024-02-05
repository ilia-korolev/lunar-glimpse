// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'google_translate_text_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleTranslateTextRequestDtoImpl
    _$$GoogleTranslateTextRequestDtoImplFromJson(Map<String, dynamic> json) =>
        _$GoogleTranslateTextRequestDtoImpl(
          source: (json['q'] as List<dynamic>).map((e) => e as String).toList(),
          sourceLanguage: json['source'] as String,
          targetLanguage: json['target'] as String,
        );

Map<String, dynamic> _$$GoogleTranslateTextRequestDtoImplToJson(
        _$GoogleTranslateTextRequestDtoImpl instance) =>
    <String, dynamic>{
      'q': instance.source,
      'source': instance.sourceLanguage,
      'target': instance.targetLanguage,
    };
