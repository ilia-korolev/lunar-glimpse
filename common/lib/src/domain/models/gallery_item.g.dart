// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'gallery_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GalleryItemImpl _$$GalleryItemImplFromJson(Map<String, dynamic> json) =>
    _$GalleryItemImpl(
      uri: Uri.parse(json['uri'] as String),
      hdUri: Uri.parse(json['hdUri'] as String),
      date: Date.fromJson(json['date'] as String),
      title: json['title'] as String,
      explanation: json['explanation'] as String,
      copyright: json['copyright'] as String?,
      type: $enumDecode(_$GalleryItemTypeEnumMap, json['type']),
      language: $enumDecode(_$GalleryItemLanguageEnumMap, json['language']),
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$GalleryItemImplToJson(_$GalleryItemImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri.toString(),
      'hdUri': instance.hdUri.toString(),
      'date': instance.date.toJson(),
      'title': instance.title,
      'explanation': instance.explanation,
      'copyright': instance.copyright,
      'type': _$GalleryItemTypeEnumMap[instance.type]!,
      'language': _$GalleryItemLanguageEnumMap[instance.language]!,
      'isFavorite': instance.isFavorite,
    };

const _$GalleryItemTypeEnumMap = {
  GalleryItemType.video: 'video',
  GalleryItemType.image: 'image',
};

const _$GalleryItemLanguageEnumMap = {
  GalleryItemLanguage.english: 'english',
  GalleryItemLanguage.japanese: 'japanese',
  GalleryItemLanguage.russian: 'russian',
  GalleryItemLanguage.chinese: 'chinese',
};
