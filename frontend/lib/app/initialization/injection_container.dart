import 'package:astro_common/astro_common.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
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
    ..registerLazySingleton<Flavor>(
      Flavor.fromEnvironment,
    )
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
    ..registerLazySingleton<LoggingBlocObserver>(
      () => LoggingBlocObserver(
        logger: _getIt(),
      ),
    )
    ..registerLazySingleton<HttpService>(
      () => DioHttpService(
        interceptors: [
          LoggingDioInterceptor(
            logger: _getIt(),
          ),
        ],
      ),
    )
    ..registerLazySingleton<Theming>(
      () => Theming(
        builder: const RegularThemeBuilder(),
      ),
    )
    ..registerLazySingleton<GlobalKey<ScaffoldMessengerState>>(
      GlobalKey<ScaffoldMessengerState>.new,
    )
    ..registerLazySingleton<WebFeedParser>(
      WebFeedParserImpl.new,
    )
    ..registerLazySingleton<FileSaver>(
      FileSaver.new,
    )
    ..registerLazySingleton<ShareService>(
      () => ShareServiceImpl(deviceInfo: DeviceInfoPlugin()),
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
    ..registerSingletonWithDependencies<LocalGalleryDataSource>(
      () => DriftGalleryDataSource(database: _getIt()),
      dependsOn: [
        AppDatabase,
      ],
    )
    ..registerLazySingleton<LocalWebFeedDataSource>(
      () => DriftWebFeedDataSource(
        database: _getIt(),
      ),
    )
    ..registerLazySingleton<RemoteMultiLanguageGalleryDataSource>(
      () => AstroBackendGalleryDataSource(
        httpService: _getIt(),
        apiUrl: _getIt<Flavor>().galleryApiUrl,
      ),
    )
    ..registerLazySingleton<RemoteNewsDataSource>(
      () => RssNewsDataSource(
        httpService: _getIt(),
        webFeedParser: _getIt(),
      ),
    )
    ..registerLazySingleton<RemoteDownloadFileDataSource>(
      () => HttpDownloadFileDataSource(
        httpService: _getIt(),
      ),
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
    ..registerLazySingleton<GalleryRepository>(
      () => GalleryRepositoryImpl(
        localGalleryDataSource: _getIt(),
        remoteGalleryDataSource: _getIt(),
      ),
    )
    ..registerLazySingleton<NewsRepository>(
      () => NewsRepositoryImpl(
        remoteNewsDataSource: _getIt(),
      ),
    )
    ..registerLazySingleton<WebFeedRepository>(
      () => WebFeedRepositoryImpl(
        localWebFeedDataSource: _getIt(),
      ),
    )
    ..registerLazySingleton<SaveFileRepository>(
      () => SaveFileRepositoryImpl(
        remoteDownloadFileDataSource: _getIt(),
        fileSaver: _getIt(),
      ),
    );
}

Future<void> _registerBlocs() async {
  _getIt
    ..registerLazySingleton<AppSettingsCubit>(
      () => AppSettingsCubit(
        appSettingsRepository: GetIt.instance(),
      ),
    )
    ..registerLazySingleton<GalleryBloc>(
      () => GalleryBloc(
        repository: _getIt(),
      ),
    )
    ..registerLazySingleton<NewsBloc>(
      () => NewsBloc(
        newsRepository: _getIt(),
        webFeedRepository: _getIt(),
      ),
    );
}
