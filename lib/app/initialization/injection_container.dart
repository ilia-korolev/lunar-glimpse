import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

final _getIt = GetIt.instance;

Future<void> configureDependencies() async {
  await _registerServices();
  await _registerDataSources();
  await _registerRepositories();
  await _registerBlocs();
}

Future<void> _registerServices() async {
  _getIt
    ..registerSingletonAsync<SharedPreferences>(
      () async => SharedPreferences.getInstance(),
    )
    ..registerSingletonAsync<AppDatabase>(
      () async {
        final isolate = await AppDatabase.createDriftIsolate();
        final connection = await isolate.connect(singleClientMode: true);

        return AppDatabase(connection);
      },
    )
    ..registerLazySingleton<Logger>(
      () => Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          printEmojis: false,
        ),
        output: DeveloperLogOutput(),
      ),
    )
    ..registerLazySingleton<AppBlocObserver>(
      () => AppBlocObserver(
        logger: _getIt(),
      ),
    )
    ..registerLazySingleton<HttpService>(
      () => HttpServiceImpl(
        interceptors: [
          DioLoggingInterceptor(
            logger: _getIt(),
          ),
        ],
      ),
    )
    ..registerLazySingleton<Theming>(
      () => Theming(
        builder: const RegularThemeBuilder(),
      ),
    );
}

Future<void> _registerDataSources() async {
  _getIt
    ..registerSingletonWithDependencies<LocalAppSettingsDataSource>(
      () => SharedPreferencesAppSettingsDataSource(
        sharedPreferences: _getIt(),
      ),
      dependsOn: [
        SharedPreferences,
      ],
    )
    ..registerSingletonWithDependencies<LocalDailyMediaDataSource>(
      () => DriftDailyMediaDataSource(database: _getIt()),
      dependsOn: [
        AppDatabase,
      ],
    )
    ..registerLazySingleton<RemoteDailyMediaDataSource>(
      () => NasaApodDataSource(httpService: _getIt()),
    );
}

Future<void> _registerRepositories() async {
  _getIt
    ..registerSingletonWithDependencies<AppSettingsRepository>(
      () => AppSettingsRepositoryImpl(
        localAppSettingsDataSource: _getIt(),
      ),
      dependsOn: [
        LocalAppSettingsDataSource,
      ],
    )
    ..registerLazySingleton<DailyMediaRepository>(
      () => DailyMediaRepositoryImpl(
        localDailyMediaDataSource: _getIt(),
        remoteDailyMediaDataSource: _getIt(),
      ),
    );
}

Future<void> _registerBlocs() async {
  _getIt.registerLazySingleton<DailyMediaBloc>(
    () => DailyMediaBloc(
      repository: _getIt(),
    ),
  );
}
