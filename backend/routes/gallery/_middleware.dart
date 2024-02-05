import 'dart:io';

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

  return GalleryRepositoryImpl(
    localGalleryDataSource: PostgresGalleryDataSource(
      dbConnection: await _openDbConnection(),
    ),
    remoteGalleryDataSource: NasaApodDataSource(
      httpService: httpService,
    ),
    remoteTranslationDataSource: GoogleTranslationDataSource(
      httpService: httpService,
      apiKey: Platform.environment['GOOGLE_TRANSLATE_API_KEY']!,
    ),
  );
}

Future<Connection> _openDbConnection() => Connection.open(
      Endpoint(
        host: Platform.environment['DB_HOST']!,
        database: Platform.environment['DB_NAME']!,
        username: Platform.environment['DB_USER'],
        password: Platform.environment['DB_PASSWORD'],
      ),
      settings: const ConnectionSettings(sslMode: SslMode.disable),
    );
