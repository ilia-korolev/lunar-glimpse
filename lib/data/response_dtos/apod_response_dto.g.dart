// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'apod_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApodResponseDto _$$_ApodResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_ApodResponseDto(
      date: const DateConverter().fromJson(json['date'] as String),
      explanation: json['explanation'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
      copyright: json['copyright'] as String?,
      hdUrl: json['hdurl'] as String?,
    );

Map<String, dynamic> _$$_ApodResponseDtoToJson(_$_ApodResponseDto instance) {
  final val = <String, dynamic>{
    'date': const DateConverter().toJson(instance.date),
    'explanation': instance.explanation,
    'title': instance.title,
    'url': instance.url,
    'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
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

const _$MediaTypeEnumMap = {
  MediaType.video: 'video',
  MediaType.image: 'image',
};
