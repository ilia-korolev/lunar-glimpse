import 'package:drift/drift.dart';
import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';

abstract interface class LocalDailyMediaDataSource {
  const LocalDailyMediaDataSource();

  Future<void> cacheDailyMedia({
    required List<Media> dailyMedia,
    bool onConflictUpdate = false,
  });

  Future<List<Media>> getDailyMedia({
    required Date startDate,
    required Date endDate,
  });
}

class DriftDailyMediaDataSource implements LocalDailyMediaDataSource {
  const DriftDailyMediaDataSource({required AppDatabase database})
      : _database = database;

  final AppDatabase _database;

  @override
  Future<void> cacheDailyMedia({
    required List<Media> dailyMedia,
    bool onConflictUpdate = false,
  }) async {
    if (dailyMedia.isEmpty) {
      return;
    }

    await _database.batch(
      (batch) => batch.insertAll(
        _database.dailyMediaEntities,
        dailyMedia.map(
          (m) => DailyMediaEntity(
            date: m.date,
            title: m.title,
            explanation: m.explanation,
            uri: m.uri,
            hdUri: m.hdUri,
            copyright: m.copyright,
            type: m.type,
            isFavorite: m.isFavorite,
          ),
        ),
        mode: onConflictUpdate
            ? InsertMode.insertOrReplace
            : InsertMode.insertOrIgnore,
      ),
    );
  }

  @override
  Future<List<Media>> getDailyMedia({
    required Date startDate,
    required Date endDate,
  }) async {
    final startDateInt = startDate.toInt();
    final endDateInt = endDate.toInt();

    final dbEntities = await (_database.select(_database.dailyMediaEntities)
          ..where((m) => m.date.isBetweenValues(startDateInt, endDateInt))
          ..orderBy([(t) => OrderingTerm.desc(t.date)]))
        .get();

    final models = dbEntities
        .map(
          (e) => Media(
            uri: e.uri,
            hdUri: e.hdUri,
            date: e.date,
            title: e.title,
            explanation: e.explanation,
            copyright: e.copyright,
            type: e.type,
            isFavorite: e.isFavorite,
          ),
        )
        .toList();

    return models;
  }
}
