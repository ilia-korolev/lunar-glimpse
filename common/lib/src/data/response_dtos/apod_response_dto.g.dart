// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'apod_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApodResponseDtoImpl _$$ApodResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApodResponseDtoImpl(
      date: Date.fromJson(json['date'] as String),
      explanation: json['explanation'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      mediaType: $enumDecode(_$GalleryItemTypeEnumMap, json['media_type']),
      copyright: json['copyright'] as String?,
      hdUrl: json['hdurl'] as String?,
      languageCode: json['languageCode'] as String? ?? 'en',
    );

Map<String, dynamic> _$$ApodResponseDtoImplToJson(
    _$ApodResponseDtoImpl instance) {
  final val = <String, dynamic>{
    'date': instance.date.toJson(),
    'explanation': instance.explanation,
    'title': instance.title,
    'url': instance.url,
    'media_type': _$GalleryItemTypeEnumMap[instance.mediaType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('copyright', instance.copyright);
  writeNotNull('hdurl', instance.hdUrl);
  val['languageCode'] = instance.languageCode;
  return val;
}

const _$GalleryItemTypeEnumMap = {
  GalleryItemType.video: 'video',
  GalleryItemType.image: 'image',
};
