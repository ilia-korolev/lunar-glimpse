// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'nasa_apod_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NasaApodRequestDtoImpl _$$NasaApodRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NasaApodRequestDtoImpl(
      date: json['date'] == null ? null : Date.fromJson(json['date'] as String),
      startDate: json['start_date'] == null
          ? null
          : Date.fromJson(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : Date.fromJson(json['end_date'] as String),
      count: json['count'] as int?,
      thumbs: json['thumbs'] as bool? ?? false,
      apiKey: json['api_key'] as String? ?? 'DEMO_KEY',
    );

Map<String, dynamic> _$$NasaApodRequestDtoImplToJson(
    _$NasaApodRequestDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date', instance.date?.toJson());
  writeNotNull('start_date', instance.startDate?.toJson());
  writeNotNull('end_date', instance.endDate?.toJson());
  writeNotNull('count', instance.count);
  val['thumbs'] = instance.thumbs;
  val['api_key'] = instance.apiKey;
  return val;
}
