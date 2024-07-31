// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'gallery_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GalleryItemImpl _$$GalleryItemImplFromJson(Map<String, dynamic> json) =>
    _$GalleryItemImpl(
      date: Date.fromJson(json['date'] as String),
      copyright: json['copyright'] as String?,
      media: GalleryMedia.fromJson(json['media'] as Map<String, dynamic>),
      info: GalleryInfo.fromJson(json['info'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$$GalleryItemImplToJson(_$GalleryItemImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toJson(),
      'copyright': instance.copyright,
      'media': instance.media.toJson(),
      'info': instance.info.toJson(),
      'isFavorite': instance.isFavorite,
    };

_$GalleryImageImpl _$$GalleryImageImplFromJson(Map<String, dynamic> json) =>
    _$GalleryImageImpl(
      uri: Uri.parse(json['uri'] as String),
      hdUri: Uri.parse(json['hdUri'] as String),
      thumbUri: Uri.parse(json['thumbUri'] as String),
      aspectRatio: (json['aspectRatio'] as num).toDouble(),
      aspectRatioThumb: (json['aspectRatioThumb'] as num).toDouble(),
      blurHash: json['blurHash'] as String,
      blurHashThumb: json['blurHashThumb'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GalleryImageImplToJson(_$GalleryImageImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri.toString(),
      'hdUri': instance.hdUri.toString(),
      'thumbUri': instance.thumbUri.toString(),
      'aspectRatio': instance.aspectRatio,
      'aspectRatioThumb': instance.aspectRatioThumb,
      'blurHash': instance.blurHash,
      'blurHashThumb': instance.blurHashThumb,
      'type': instance.$type,
    };

_$GalleryVideoImpl _$$GalleryVideoImplFromJson(Map<String, dynamic> json) =>
    _$GalleryVideoImpl(
      uri: Uri.parse(json['uri'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GalleryVideoImplToJson(_$GalleryVideoImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri.toString(),
      'type': instance.$type,
    };

_$GalleryOtherImpl _$$GalleryOtherImplFromJson(Map<String, dynamic> json) =>
    _$GalleryOtherImpl(
      uri: Uri.parse(json['uri'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GalleryOtherImplToJson(_$GalleryOtherImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri.toString(),
      'type': instance.$type,
    };

_$GalleryEmptyImpl _$$GalleryEmptyImplFromJson(Map<String, dynamic> json) =>
    _$GalleryEmptyImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GalleryEmptyImplToJson(_$GalleryEmptyImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$GalleryInfoImpl _$$GalleryInfoImplFromJson(Map<String, dynamic> json) =>
    _$GalleryInfoImpl(
      language: $enumDecode(_$ContentLanguageEnumMap, json['language']),
      originalLanguage:
          $enumDecode(_$ContentLanguageEnumMap, json['originalLanguage']),
      title: json['title'] as String,
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$$GalleryInfoImplToJson(_$GalleryInfoImpl instance) =>
    <String, dynamic>{
      'language': _$ContentLanguageEnumMap[instance.language]!,
      'originalLanguage': _$ContentLanguageEnumMap[instance.originalLanguage]!,
      'title': instance.title,
      'explanation': instance.explanation,
    };

const _$ContentLanguageEnumMap = {
  ContentLanguage.english: 'english',
  ContentLanguage.japanese: 'japanese',
  ContentLanguage.russian: 'russian',
  ContentLanguage.chinese: 'chinese',
};
