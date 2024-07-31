import 'dart:async';

import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:cloudinary/cloudinary.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:logger/logger.dart';

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
        localDataSource: DriftGalleryDataSource(
          database: DatabaseProvider.instance.database,
        ),
        remoteDataSource: NasaApodDataSource(
          httpService: httpService,
          apiKey: env.nasaApiKey ?? 'DEMO_KEY',
        ),
        translationDataSource: RemoteGalleryTranslationDataSourceImpl(
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
        ),
        mapperDataSource: RemoteGalleryMapperDataSourceImpl(
          remoteDownloadFileDataSource: HttpDownloadFileDataSource(
            httpService: httpService,
          ),
          remoteImageDataSource: switch (env.mediaStorage) {
            MediaStorage.cloudinary => CloudinaryImageDataSource(
                cloudinary: Cloudinary.signedConfig(
                  apiKey: env.cloudinaryApiKey!,
                  apiSecret: env.cloudinaryApiSecret!,
                  cloudName: env.cloudinaryCloudName!,
                ),
              ),
            MediaStorage.mock => const MockImageDataSource(),
          },
          blurHashGenerator: const BlurHashGeneratorImpl(),
        ),
      );
    },
  );
}
