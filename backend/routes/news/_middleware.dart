import 'dart:async';

import 'package:astro_backend/_export.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

Handler middleware(Handler handler) {
  return handler.use(_galleryRepositoryProvider());
}

Middleware _galleryRepositoryProvider() {
  return provider<Future<NewsSourceRepository>>(
    (context) async {
      return NewsSourceRepositoryImpl(
        localNewsSourceDataSource: PostgresNewsSourceDataSource(
          postgresPool: _postgresPool,
        ),
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
