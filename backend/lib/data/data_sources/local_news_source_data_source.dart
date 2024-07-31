import 'package:astro_backend/data/_export.dart';
import 'package:astro_common/astro_common.dart';

abstract interface class LocalNewsSourceDataSource {
  const LocalNewsSourceDataSource();

  Future<List<NewsSource>> getSources();

  Future<NewsSource?> getSourceByUri({required Uri sourceUri});
}

class DriftNewsSourceDataSource implements LocalNewsSourceDataSource {
  const DriftNewsSourceDataSource({
    required AppDatabase database,
  }) : _database = database;

  final AppDatabase _database;

  @override
  Future<NewsSource?> getSourceByUri({required Uri sourceUri}) async {
    final query = _database.select(_database.newsSourceEntities)
      ..where((t) => t.uri.equals(sourceUri.toString()));

    final dbEntity = (await query.get()).singleOrNull;

    final model = dbEntity == null
        ? null
        : NewsSource(
            uri: dbEntity.uri,
            iconUri: dbEntity.iconUri,
            language: dbEntity.language,
            isShown: false,
          );

    return model;
  }

  @override
  Future<List<NewsSource>> getSources() async {
    final dbEntities =
        await _database.select(_database.newsSourceEntities).get();

    final models = dbEntities
        .map(
          (e) => NewsSource(
            uri: e.uri,
            iconUri: e.iconUri,
            language: e.language,
            isShown: false,
          ),
        )
        .toList();

    return models;
  }
}
