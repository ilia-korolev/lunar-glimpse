import 'package:astro_common/astro_common.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/data/_export.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    required ThemeMode themeMode,
    @LocaleConverterNullable() required Locale? locale,
    required bool translateGallery,
  }) = _AppSettings;

  const AppSettings._();

  factory AppSettings.fromJson(Map<String, Object?> json) =>
      _$AppSettingsFromJson(json);

  Locale get localeOfDefault {
    return locale ??
        basicLocaleListResolution(
          WidgetsBinding.instance.platformDispatcher.locales,
          AppLocalizations.supportedLocales,
        );
  }

  ContentLanguage get galleryLanguage => !translateGallery
      ? ContentLanguage.english
      : ContentLanguage.fromLanguageCode(
          localeOfDefault.languageCode,
        );

  static const system = AppSettings(
    themeMode: ThemeMode.system,
    locale: null,
    translateGallery: true,
  );
}
