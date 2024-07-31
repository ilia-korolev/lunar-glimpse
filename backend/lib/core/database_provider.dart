import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:csv/csv.dart';
import 'package:logger/logger.dart';
import 'package:postgres/postgres.dart';

class DatabaseProvider {
  DatabaseProvider._privateConstructor();

  static final DatabaseProvider _instance =
      DatabaseProvider._privateConstructor();

  static DatabaseProvider get instance => _instance;

  final AppDatabase database = AppDatabase(
    pgSession: PostgresPool.withEndpoints(
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
    ),
    initializer: DatabaseInitializer(
      remoteDownloadFileDataSource: HttpDownloadFileDataSource(
        httpService: DioHttpService(
          interceptors: [
            LoggingDioInterceptor(logger: Logger()),
          ],
        ),
      ),
      csvToListConverter: const CsvToListConverter(),
    ),
  );
}
