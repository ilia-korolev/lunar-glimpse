// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'gallery_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GalleryItemImpl _$$GalleryItemImplFromJson(Map<String, dynamic> json) =>
    _$GalleryItemImpl(
      date: Date.fromJson(json['date'] as String),
      uri: Uri.parse(json['uri'] as String),
      hdUri: Uri.parse(json['hdUri'] as String),
      copyright: json['copyright'] as String?,
      type: $enumDecode(_$GalleryItemTypeEnumMap, json['type']),
      isFavorite: json['isFavorite'] as bool,
      language: $enumDecode(_$ContentLanguageEnumMap, json['language']),
      originalLanguage:
          $enumDecode(_$ContentLanguageEnumMap, json['originalLanguage']),
      title: json['title'] as String,
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$$GalleryItemImplToJson(_$GalleryItemImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toJson(),
      'uri': instance.uri.toString(),
      'hdUri': instance.hdUri.toString(),
      'copyright': instance.copyright,
      'type': _$GalleryItemTypeEnumMap[instance.type]!,
      'isFavorite': instance.isFavorite,
      'language': _$ContentLanguageEnumMap[instance.language]!,
      'originalLanguage': _$ContentLanguageEnumMap[instance.originalLanguage]!,
      'title': instance.title,
      'explanation': instance.explanation,
    };

const _$GalleryItemTypeEnumMap = {
  GalleryItemType.video: 'video',
  GalleryItemType.image: 'image',
  GalleryItemType.other: 'other',
  GalleryItemType.empty: 'empty',
};

const _$ContentLanguageEnumMap = {
  ContentLanguage.english: 'english',
  ContentLanguage.japanese: 'japanese',
  ContentLanguage.russian: 'russian',
  ContentLanguage.chinese: 'chinese',
};
