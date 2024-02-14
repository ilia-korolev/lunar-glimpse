import 'dart:io';

class EnvironmentVariables {
  const EnvironmentVariables._({
    required this.dbHost,
    required this.dbName,
    required this.dbUser,
    required this.dbPassword,
    required this.translationSource,
    required this.googleTranslateApiKey,
    required this.deeplApiKey,
    required this.nasaApiKey,
    required this.maxItems,
    required this.dbMaxConnectionCount,
    required this.dbMaxConnectionAge,
    required this.dbMaxSessionUse,
    required this.dbMaxQueryCount,
  });

  factory EnvironmentVariables._init() {
    final dbHost = Platform.environment[_dbHostEnv];
    if (dbHost == null) {
      throw ArgumentError(
        'Environment variable $_dbHostEnv must be provided',
      );
    }

    final dbName = Platform.environment[_dbNameEnv];
    if (dbName == null) {
      throw ArgumentError(
        'Environment variable $_dbNameEnv must be provided',
      );
    }

    final dbUser = Platform.environment[_dbUserEnv];
    if (dbUser == null) {
      throw ArgumentError(
        'Environment variable $_dbUserEnv must be provided',
      );
    }

    final dbPassword = Platform.environment[_dbPasswordEnv];
    if (dbPassword == null) {
      throw ArgumentError(
        'Environment variable $_dbPasswordEnv must be provided',
      );
    }

    final translationSource = TranslationSource.fromString(
      Platform.environment[_translationSourceEnv],
    );

    final googleTranslateApiKey =
        Platform.environment[_googleTranslateApiKeyEnv];
    if (translationSource == TranslationSource.google &&
        googleTranslateApiKey == null) {
      throw ArgumentError(
        'Environment variable $_googleTranslateApiKeyEnv must be provided',
      );
    }

    final deeplApiKey = Platform.environment[_deeplApiKeyEnv];
    if (translationSource == TranslationSource.deepl && deeplApiKey == null) {
      throw ArgumentError(
        'Environment variable $_deeplApiKeyEnv must be provided',
      );
    }

    final nasaApiKey = Platform.environment[_nasaApiKeyEnv];
    final maxItems = int.tryParse(Platform.environment[_maxItemsEnv] ?? '');

    final dbMaxConnectionCount =
        int.tryParse(Platform.environment[_dbMaxConnectionCountEnv] ?? '');

    final dbMaxConnectionAgeSec =
        int.tryParse(Platform.environment[_dbMaxConnectionAgeEnv] ?? '');

    final dbMaxConnectionAge = dbMaxConnectionAgeSec == null
        ? null
        : Duration(seconds: dbMaxConnectionAgeSec);

    final dbMaxSessionUseSec =
        int.tryParse(Platform.environment[_dbMaxSessionUseEnv] ?? '');

    final dbMaxSessionUse = dbMaxSessionUseSec == null
        ? null
        : Duration(seconds: dbMaxSessionUseSec);

    final dbMaxQueryCount =
        int.tryParse(Platform.environment[_dbMaxQueryCountEnv] ?? '');

    return EnvironmentVariables._(
      dbHost: dbHost,
      dbName: dbName,
      dbUser: dbUser,
      dbPassword: dbPassword,
      translationSource: translationSource,
      googleTranslateApiKey: googleTranslateApiKey,
      deeplApiKey: deeplApiKey,
      nasaApiKey: nasaApiKey,
      maxItems: maxItems,
      dbMaxConnectionCount: dbMaxConnectionCount,
      dbMaxConnectionAge: dbMaxConnectionAge,
      dbMaxSessionUse: dbMaxSessionUse,
      dbMaxQueryCount: dbMaxQueryCount,
    );
  }

  final String dbHost;
  final String dbName;
  final String dbUser;
  final String dbPassword;
  final TranslationSource translationSource;
  final String? googleTranslateApiKey;
  final String? deeplApiKey;
  final String? nasaApiKey;
  final int? maxItems;
  final int? dbMaxConnectionCount;
  final Duration? dbMaxConnectionAge;
  final Duration? dbMaxSessionUse;
  final int? dbMaxQueryCount;

  static const _dbHostEnv = 'DB_HOST';
  static const _dbNameEnv = 'DB_NAME';
  static const _dbUserEnv = 'DB_USER';
  static const _dbPasswordEnv = 'DB_PASSWORD';
  static const _translationSourceEnv = 'TRANSLATION_SOURCE';
  static const _googleTranslateApiKeyEnv = 'GOOGLE_TRANSLATE_API_KEY';
  static const _deeplApiKeyEnv = 'DEEPL_API_KEY';
  static const _nasaApiKeyEnv = 'NASA_API_KEY';
  static const _maxItemsEnv = 'MAX_ITEMS';
  static const _dbMaxConnectionCountEnv = 'DB_MAX_CONNECTION_COUNT';
  static const _dbMaxConnectionAgeEnv = 'DB_MAX_CONNECTION_AGE';
  static const _dbMaxSessionUseEnv = 'DB_MAX_SESSION_USE';
  static const _dbMaxQueryCountEnv = 'DB_MAX_QUERY_COUNT';

  static final instance = EnvironmentVariables._init();
}

enum TranslationSource {
  google,
  deepl,
  mock;

  static TranslationSource fromString(String? str) => switch (str) {
        'google' => TranslationSource.google,
        'deepl' => TranslationSource.deepl,
        _ => TranslationSource.mock,
      };
}
