import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:logger/logger.dart';
import 'package:postgres/postgres.dart';

Handler middleware(Handler handler) {
  return handler.use(
    provider<Future<GalleryRepository>>(
      (context) async => _createGalleryRepositoryAsync(),
    ),
  );
}

Future<GalleryRepository> _createGalleryRepositoryAsync() async {
  final httpService = DioHttpService(
    interceptors: [
      LoggingDioInterceptor(logger: Logger()),
    ],
  );

  final env = EnvironmentVariables.instance;

  return GalleryRepositoryImpl(
    localGalleryDataSource: PostgresGalleryDataSource(
      dbConnection: await _openDbConnection(env),
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
}

Future<Connection> _openDbConnection(EnvironmentVariables env) =>
    Connection.open(
      Endpoint(
        host: env.dbHost,
        database: env.dbName,
        username: env.dbUser,
        password: env.dbPassword,
      ),
      settings: const ConnectionSettings(sslMode: SslMode.disable),
    );
