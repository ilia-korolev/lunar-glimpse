import 'package:astro_common/astro_common.dart';
import 'package:drift/drift.dart';
import 'package:flutter_astronomy/data/_export.dart';

abstract interface class LocalGalleryDataSource {
  const LocalGalleryDataSource();

  Future<void> cacheItems({
    required List<GalleryItem> galleryItems,
    bool onConflictUpdate = false,
  });

  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  });

  Future<List<Date>> getFavoriteDates();
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
      (batch) {
        batch
          ..insertAll(
            _database.gallery,
            galleryItems.map(
              (i) => GalleryEntity(
                date: i.date,
                uri: i.uri,
                hdUri: i.hdUri,
                copyright: i.copyright,
                type: i.type,
                isFavorite: i.isFavorite,
              ),
            ),
            mode: onConflictUpdate
                ? InsertMode.insertOrReplace
                : InsertMode.insertOrIgnore,
          )
          ..insertAll(
            _database.galleryTranslations,
            galleryItems.map(
              (i) => GalleryTranslationEntity(
                date: i.date,
                language: i.language,
                originalLanguage: i.originalLanguage,
                title: i.title,
                explanation: i.explanation,
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
  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  }) async {
    final startDateInt = startDate.toInt();
    final endDateInt = endDate.toInt();

    final gTable = _database.gallery;
    final tTable = _database.galleryTranslations;

    final query = _database
        .select(gTable)
        .join([innerJoin(tTable, tTable.date.equalsExp(gTable.date))])
      ..where(gTable.date.isBetweenValues(startDateInt, endDateInt))
      ..where(tTable.language.equals(language.name))
      ..orderBy([OrderingTerm.desc(gTable.date)]);

    final queryResult = await query.get();

    final models = queryResult.map(
      (r) {
        final g = r.readTable(gTable);
        final t = r.readTable(tTable);

        return GalleryItem(
          date: g.date,
          uri: g.uri,
          hdUri: g.hdUri,
          copyright: g.copyright,
          type: g.type,
          isFavorite: g.isFavorite,
          language: t.language,
          originalLanguage: t.originalLanguage,
          title: t.title,
          explanation: t.explanation,
        );
      },
    ).toList();

    return models;
  }

  @override
  Future<List<Date>> getFavoriteDates() async {
    final query = _database.select(_database.gallery)
      ..where((g) => g.isFavorite)
      ..orderBy([(g) => OrderingTerm.desc(g.date)]);

    final queryResult = await query.get();

    final dates = queryResult.map((e) => e.date).toList();

    return dates;
  }
}
