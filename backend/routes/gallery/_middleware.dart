import 'dart:async';

import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:logger/logger.dart';
import 'package:postgres/postgres.dart';

Handler middleware(Handler handler) {
  return handler.use(_galleryRepositoryProvider());
}

Middleware _galleryRepositoryProvider() {
  return provider<Future<GalleryRepository>>(
    (context) async {
      final httpService = DioHttpService(
        interceptors: [
          LoggingDioInterceptor(logger: Logger()),
        ],
      );

      final env = EnvironmentVariables.instance;

      return GalleryRepositoryImpl(
        localGalleryDataSource: PostgresGalleryDataSource(
          postgresPool: _postgresPool,
        ),
        remoteGalleryDataSource: NasaApodDataSource(
          httpService: httpService,
          apiKey: env.nasaApiKey ?? 'DEMO_KEY',
        ),
        remoteTranslationDataSource: switch (env.translationSource) {
          TranslationSource.google => GoogleTranslationDataSource(
              httpService: httpService,
              apiKey: env.googleTranslateApiKey!,
            ),
          TranslationSource.deepl => DeepLTranslationDataSource(
              httpService: httpService,
              deepLApi: DeepLApi.free,
              apiKey: env.deeplApiKey!,
            ),
          TranslationSource.mock => const MockTranslationDataSource(),
        },
      );
    },
  );
}

final _postgresPool = PostgresPool.withEndpoints(
  [
    Endpoint(
      host: EnvironmentVariables.instance.dbHost,
      database: EnvironmentVariables.instance.dbName,
      username: EnvironmentVariables.instance.dbUser,
      password: EnvironmentVariables.instance.dbPassword,
    ),
  ],
  settings: PoolSettings(
    maxConnectionCount: EnvironmentVariables.instance.dbMaxConnectionCount,
    maxConnectionAge: EnvironmentVariables.instance.dbMaxConnectionAge,
    maxSessionUse: EnvironmentVariables.instance.dbMaxSessionUse,
    maxQueryCount: EnvironmentVariables.instance.dbMaxQueryCount,
    sslMode: SslMode.disable,
  ),
);
