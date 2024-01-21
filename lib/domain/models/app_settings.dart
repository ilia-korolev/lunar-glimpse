import 'package:flutter/material.dart';
import 'package:flutter_astronomy/data/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    required ThemeMode themeMode,
    @LocaleConverterNullable() required Locale? locale,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, Object?> json) =>
      _$AppSettingsFromJson(json);

  static const system = AppSettings(
    themeMode: ThemeMode.system,
    locale: null,
  );
}
