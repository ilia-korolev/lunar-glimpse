import 'dart:convert';

import 'package:flutter_astronomy/domain/_export.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class LocalAppSettingsDataSource {
  const LocalAppSettingsDataSource();

  AppSettings readSettings();
  Future<void> writeSettings({required AppSettings settings});
}

const _appSettingsKey = 'app_settings';

class SharedPreferencesAppSettingsDataSource
    implements LocalAppSettingsDataSource {
  const SharedPreferencesAppSettingsDataSource({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  @override
  AppSettings readSettings() {
    if (!_sharedPreferences.containsKey(_appSettingsKey)) {
      return AppSettings.system;
    }

    final jsonString = _sharedPreferences.getString(_appSettingsKey)!;
    final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
    final settings = AppSettings.fromJson(jsonMap);

    return settings;
  }

  @override
  Future<void> writeSettings({required AppSettings settings}) async {
    final jsonMap = settings.toJson();
    final jsonString = json.encode(jsonMap);

    await _sharedPreferences.setString(_appSettingsKey, jsonString);
  }
}
