import 'package:collection/collection.dart';
import 'package:drift/drift.dart';
import 'package:frontend/data/_export.dart';
import 'package:frontend/domain/_export.dart';

abstract interface class LocalNewsSourceDataSource {
  const LocalNewsSourceDataSource();

  Future<List<NewsSource>> getNewsSources();
  Future<List<NewsSource>> getShownNewsSources();

  Future<void> cacheNewsSources({
    required List<NewsSource> newsSources,
    bool onConflictUpdate = false,
  });
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
            favicon: e.favicon,
            locale: e.locale,
            isShown: e.isShown,
          ),
        )
        .sortedBy((s) => s.locale.languageCode + s.name)
        .toList();

    return models;
  }

  @override
  Future<List<NewsSource>> getShownNewsSources() async {
    final dbEntities = await (_database.select(_database.newsSourceEntities)
          ..where((w) => w.isShown.equals(true)))
        .get();

    final models = dbEntities
        .map(
          (e) => NewsSource(
            uri: e.uri,
            favicon: e.favicon,
            locale: e.locale,
            isShown: e.isShown,
          ),
        )
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
              favicon: i.favicon,
              locale: i.locale,
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
}
