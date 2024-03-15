import 'dart:async';

import 'package:frontend/data/data_sources/_export.dart';
import 'package:frontend/domain/_export.dart';

abstract interface class AppSettingsRepository {
  const AppSettingsRepository();

  Stream<AppSettings> get appSettings;

  AppSettings getSettings();
  Future<void> setSettings({required AppSettings settings});
}

class AppSettingsRepositoryImpl implements AppSettingsRepository {
  AppSettingsRepositoryImpl({
    required LocalAppSettingsDataSource localAppSettingsDataSource,
  }) : _localAppSettingsDataSource = localAppSettingsDataSource;

  final LocalAppSettingsDataSource _localAppSettingsDataSource;

  final _appSettingsController = StreamController<AppSettings>.broadcast();

  @override
  Stream<AppSettings> get appSettings => _appSettingsController.stream;

  @override
  AppSettings getSettings() {
    return _localAppSettingsDataSource.readSettings();
  }

  @override
  Future<void> setSettings({required AppSettings settings}) async {
    await _localAppSettingsDataSource.writeSettings(
      settings: settings,
    );

    _appSettingsController.add(settings);
  }
}
