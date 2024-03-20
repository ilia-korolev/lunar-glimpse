import 'package:astro_common/astro_common.dart';
import 'package:collection/collection.dart';
import 'package:drift/drift.dart';
import 'package:frontend/data/_export.dart';

abstract interface class LocalNewsSourceDataSource {
  const LocalNewsSourceDataSource();

  Future<List<NewsSource>> getNewsSources();

  Future<void> cacheNewsSources({
    required List<NewsSource> newsSources,
    bool onConflictUpdate = false,
  });

  Future<void> deleteAllSources();
}

class DriftNewsSourceDataSource implements LocalNewsSourceDataSource {
  const DriftNewsSourceDataSource({
    required AppDatabase database,
  }) : _database = database;

  final AppDatabase _database;

  @override
  Future<List<NewsSource>> getNewsSources() async {
    final dbEntities =
        await _database.select(_database.newsSourceEntities).get();

    final models = dbEntities
        .map(
          (e) => NewsSource(
            uri: e.uri,
            iconUri: e.iconUri,
            language: e.language,
            isShown: e.isShown,
          ),
        )
        .sortedBy((s) => s.language.languageCode + s.name)
        .toList();

    return models;
  }

  @override
  Future<void> cacheNewsSources({
    required List<NewsSource> newsSources,
    bool onConflictUpdate = false,
  }) async {
    if (newsSources.isEmpty) {
      return;
    }

    await _database.batch(
      (batch) {
        batch.insertAll(
          _database.newsSourceEntities,
          newsSources.map(
            (i) => NewsSourceEntity(
              uri: i.uri,
              iconUri: i.iconUri,
              language: i.language,
              isShown: i.isShown,
            ),
          ),
          mode: onConflictUpdate
              ? InsertMode.insertOrReplace
              : InsertMode.insertOrIgnore,
        );
      },
    );
  }

  @override
  Future<void> deleteAllSources() async {
    await _database.batch(
      (batch) {
        batch.deleteAll(
          _database.newsSourceEntities,
        );
      },
    );
  }
}
