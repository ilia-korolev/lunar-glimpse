import 'package:drift/drift.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DateConverter
    implements TypeConverter<Date, int>, JsonConverter<Date, String> {
  const DateConverter();

  @override
  Date fromJson(String json) {
    final dateTime = DateTime.parse(json);

    return Date.fromDateTime(dateTime: dateTime);
  }

  @override
  String toJson(Date value) {
    return value.format('yyyy-MM-dd');
  }

  @override
  Date fromSql(int fromDb) => Date.fromInt(fromDb);

  @override
  int toSql(Date value) => value.toInt();
}

class DateConverterNullable implements JsonConverter<Date?, String?> {
  const DateConverterNullable();

  @override
  Date? fromJson(String? json) {
    if (json == null) {
      return null;
    }

    return const DateConverter().fromJson(json);
  }

  @override
  String? toJson(Date? object) {
    if (object == null) {
      return null;
    }

    return const DateConverter().toJson(object);
  }
}
