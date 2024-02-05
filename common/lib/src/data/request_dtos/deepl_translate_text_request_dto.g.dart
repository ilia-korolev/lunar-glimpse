// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'deepl_translate_text_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeepLTranslateTextRequestDtoImpl _$$DeepLTranslateTextRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DeepLTranslateTextRequestDtoImpl(
      source: (json['text'] as List<dynamic>).map((e) => e as String).toList(),
      sourceLanguage: json['source_lang'] as String,
      targetLanguage: json['target_lang'] as String,
    );

Map<String, dynamic> _$$DeepLTranslateTextRequestDtoImplToJson(
        _$DeepLTranslateTextRequestDtoImpl instance) =>
    <String, dynamic>{
      'text': instance.source,
      'source_lang': instance.sourceLanguage,
      'target_lang': instance.targetLanguage,
    };
