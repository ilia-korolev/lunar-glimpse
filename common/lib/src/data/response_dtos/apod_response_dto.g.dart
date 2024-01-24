// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApodResponseDtoImpl _$$ApodResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApodResponseDtoImpl(
      date: const DateConverter().fromJson(json['date'] as String),
      explanation: json['explanation'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      mediaType: $enumDecode(_$GalleryItemTypeEnumMap, json['media_type']),
      copyright: json['copyright'] as String?,
      hdUrl: json['hdurl'] as String?,
    );

Map<String, dynamic> _$$ApodResponseDtoImplToJson(
    _$ApodResponseDtoImpl instance) {
  final val = <String, dynamic>{
    'date': const DateConverter().toJson(instance.date),
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
  return val;
}

const _$GalleryItemTypeEnumMap = {
  GalleryItemType.video: 'video',
  GalleryItemType.image: 'image',
};
