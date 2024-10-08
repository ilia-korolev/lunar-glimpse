// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'nasa_apod_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NasaApodResponseDtoImpl _$$NasaApodResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NasaApodResponseDtoImpl(
      date: Date.fromJson(json['date'] as String),
      explanation: json['explanation'] as String,
      title: json['title'] as String,
      mediaType: $enumDecode(_$GalleryItemTypeEnumMap, json['media_type']),
      copyright: json['copyright'] as String?,
      url: json['url'] as String?,
      hdUrl: json['hdurl'] as String?,
    );

Map<String, dynamic> _$$NasaApodResponseDtoImplToJson(
    _$NasaApodResponseDtoImpl instance) {
  final val = <String, dynamic>{
    'date': instance.date.toJson(),
    'explanation': instance.explanation,
    'title': instance.title,
    'media_type': _$GalleryItemTypeEnumMap[instance.mediaType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('copyright', instance.copyright);
  writeNotNull('url', instance.url);
  writeNotNull('hdurl', instance.hdUrl);
  return val;
}

const _$GalleryItemTypeEnumMap = {
  GalleryItemType.video: 'video',
  GalleryItemType.image: 'image',
  GalleryItemType.other: 'other',
  GalleryItemType.empty: 'empty',
};
