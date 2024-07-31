import 'dart:async';

import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:logger/logger.dart';

Handler middleware(Handler handler) {
  return handler
      .use(_newsSourceRepositoryProvider())
      .use(_newsArticleRepositoryProvider());
}

Middleware _newsArticleRepositoryProvider() {
  return provider<Future<NewsArticleRepository>>(
    (context) async {
      final httpService = DioHttpService(
        interceptors: [
          LoggingDioInterceptor(logger: Logger()),
        ],
      );

      return NewsArticleRepositoryImpl(
        remoteNewsDataSource: RssNewsArticleDataSource(
          httpService: httpService,
          rssParser: const RssParserImpl(),
        ),
      );
    },
  );
}

Middleware _newsSourceRepositoryProvider() {
  return provider<Future<NewsSourceRepository>>(
    (context) async {
      return NewsSourceRepositoryImpl(
        localNewsSourceDataSource: DriftNewsSourceDataSource(
          database: DatabaseProvider.instance.database,
        ),
      );
    },
  );
}
