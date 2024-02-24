import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/domain/_export.dart';

class AppSettingsCubit extends Cubit<AppSettings> {
  AppSettingsCubit({
    required AppSettingsRepository appSettingsRepository,
  })  : _appSettingsRepository = appSettingsRepository,
        super(appSettingsRepository.getSettings());

  final AppSettingsRepository _appSettingsRepository;

  Future<void> changeThemeMode(ThemeMode mode) async {
    if (mode == state.themeMode) {
      return;
    }

    final settings = state.copyWith(
      themeMode: mode,
    );

    await _appSettingsRepository.setSettings(settings: settings);
    emit(settings);
  }

  Future<void> changeLocale(Locale? locale) async {
    if (locale == state.locale) {
      return;
    }

    final settings = state.copyWith(
      locale: locale,
    );

    await _appSettingsRepository.setSettings(settings: settings);
    emit(settings);
  }
}
