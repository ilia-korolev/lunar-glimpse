import 'package:flutter_astronomy/data/data_sources/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';

abstract interface class AppSettingsRepository {
  const AppSettingsRepository();

  AppSettings getSettings();
  Future<void> setSettings({required AppSettings settings});
}

class AppSettingsRepositoryImpl implements AppSettingsRepository {
  const AppSettingsRepositoryImpl({
    required LocalAppSettingsDataSource localAppSettingsDataSource,
  }) : _localAppSettingsDataSource = localAppSettingsDataSource;

  final LocalAppSettingsDataSource _localAppSettingsDataSource;

  @override
  AppSettings getSettings() {
    return _localAppSettingsDataSource.readSettings();
  }

  @override
  Future<void> setSettings({required AppSettings settings}) {
    return _localAppSettingsDataSource.writeSettings(settings: settings);
  }
}
