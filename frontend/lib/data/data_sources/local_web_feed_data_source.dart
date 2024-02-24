import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';

abstract interface class LocalWebFeedDataSource {
  const LocalWebFeedDataSource();

  Future<List<WebFeed>> getWebFeeds();
  Future<List<WebFeed>> getWebFeedsToShow();
}

class DriftWebFeedDataSource implements LocalWebFeedDataSource {
  const DriftWebFeedDataSource({
    required AppDatabase database,
  }) : _database = database;

  final AppDatabase _database;

  @override
  Future<List<WebFeed>> getWebFeeds() async {
    final dbEntities = await _database.select(_database.webFeedEntities).get();

    final models = dbEntities
        .map(
          (e) => WebFeed(
            uri: e.uri,
            favicon: e.favicon,
            locale: e.locale,
            isHidden: e.isHidden,
          ),
        )
        .toList();

    return models;
  }

  @override
  Future<List<WebFeed>> getWebFeedsToShow() async {
    final dbEntities = await (_database.select(_database.webFeedEntities)
          ..where((w) => w.isHidden.equals(false)))
        .get();

    final models = dbEntities
        .map(
          (e) => WebFeed(
            uri: e.uri,
            favicon: e.favicon,
            locale: e.locale,
            isHidden: e.isHidden,
          ),
        )
        .toList();

    return models;
  }
}
