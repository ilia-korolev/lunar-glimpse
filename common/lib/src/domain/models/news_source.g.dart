// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'news_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsSourceImpl _$$NewsSourceImplFromJson(Map<String, dynamic> json) =>
    _$NewsSourceImpl(
      uri: Uri.parse(json['uri'] as String),
      iconUri: Uri.parse(json['iconUri'] as String),
      language: $enumDecode(_$ContentLanguageEnumMap, json['language']),
      isShown: json['isShown'] as bool,
    );

Map<String, dynamic> _$$NewsSourceImplToJson(_$NewsSourceImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri.toString(),
      'iconUri': instance.iconUri.toString(),
      'language': _$ContentLanguageEnumMap[instance.language]!,
      'isShown': instance.isShown,
    };

const _$ContentLanguageEnumMap = {
  ContentLanguage.english: 'english',
  ContentLanguage.japanese: 'japanese',
  ContentLanguage.russian: 'russian',
  ContentLanguage.chinese: 'chinese',
};
