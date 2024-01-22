import 'package:drift/drift.dart';
import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';

abstract interface class LocalGalleryDataSource {
  const LocalGalleryDataSource();

  Future<void> cacheItems({
    required List<GalleryItem> galleryItems,
    bool onConflictUpdate = false,
  });

  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
  });

  Future<List<GalleryItem>> getFavorites();
}

class DriftGalleryDataSource implements LocalGalleryDataSource {
  const DriftGalleryDataSource({required AppDatabase database})
      : _database = database;

  final AppDatabase _database;

  @override
  Future<void> cacheItems({
    required List<GalleryItem> galleryItems,
    bool onConflictUpdate = false,
  }) async {
    if (galleryItems.isEmpty) {
      return;
    }

    await _database.batch(
      (batch) => batch.insertAll(
        _database.galleryEntities,
        galleryItems.map(
          (m) => GalleryEntity(
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
  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
  }) async {
    final startDateInt = startDate.toInt();
    final endDateInt = endDate.toInt();

    final dbEntities = await (_database.select(_database.galleryEntities)
          ..where((m) => m.date.isBetweenValues(startDateInt, endDateInt))
          ..orderBy([(t) => OrderingTerm.desc(t.date)]))
        .get();

    final models = dbEntities
        .map(
          (e) => GalleryItem(
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

  @override
  Future<List<GalleryItem>> getFavorites() async {
    final dbEntities = await (_database.select(_database.galleryEntities)
          ..where((m) => m.isFavorite)
          ..orderBy([(t) => OrderingTerm.desc(t.date)]))
        .get();

    final models = dbEntities
        .map(
          (e) => GalleryItem(
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
