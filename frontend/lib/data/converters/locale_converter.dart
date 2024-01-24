import 'package:drift/drift.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:intl/locale.dart' as intl;

class LocaleConverter
    implements TypeConverter<Locale, String>, JsonConverter<Locale, String> {
  const LocaleConverter();

  @override
  Locale fromJson(String json) => _parseLocale(json);

  @override
  String toJson(Locale object) => object.toString();

  @override
  Locale fromSql(String fromDb) => fromJson(fromDb);

  @override
  String toSql(Locale value) => toJson(value);

  // TODO(ilia-korolev): There is no parser for Locale
  // Refactor it when Flutter gets it
  // https://github.com/flutter/flutter/issues/55720
  Locale _parseLocale(String rawLocale) {
    final intlLocale = intl.Locale.parse(rawLocale);

    return Locale.fromSubtags(
      languageCode: intlLocale.languageCode,
      countryCode: intlLocale.countryCode,
      scriptCode: intlLocale.scriptCode,
    );
  }
}

class LocaleConverterNullable extends JsonConverter<Locale?, String?> {
  const LocaleConverterNullable();

  @override
  Locale? fromJson(String? json) {
    if (json == null) {
      return null;
    }

    return const LocaleConverter().fromJson(json);
  }

  @override
  String? toJson(Locale? object) {
    if (object == null) {
      return null;
    }

    return const LocaleConverter().toJson(object);
  }
}
