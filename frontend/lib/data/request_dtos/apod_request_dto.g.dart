// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'apod_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApodRequestDtoImpl _$$ApodRequestDtoImplFromJson(Map<String, dynamic> json) =>
    _$ApodRequestDtoImpl(
      date: const DateConverterNullable().fromJson(json['date'] as String?),
      startDate:
          const DateConverterNullable().fromJson(json['start_date'] as String?),
      endDate:
          const DateConverterNullable().fromJson(json['end_date'] as String?),
      count: json['count'] as int?,
      thumbs: json['thumbs'] as bool? ?? false,
      apiKey: json['api_key'] as String? ?? 'DEMO_KEY',
    );

Map<String, dynamic> _$$ApodRequestDtoImplToJson(
    _$ApodRequestDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date', const DateConverterNullable().toJson(instance.date));
  writeNotNull(
      'start_date', const DateConverterNullable().toJson(instance.startDate));
  writeNotNull(
      'end_date', const DateConverterNullable().toJson(instance.endDate));
  writeNotNull('count', instance.count);
  val['thumbs'] = instance.thumbs;
  val['api_key'] = instance.apiKey;
  return val;
}
