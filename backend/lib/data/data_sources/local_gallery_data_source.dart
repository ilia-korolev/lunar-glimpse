import 'package:astro_backend/data/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:drift/drift.dart';

abstract interface class LocalGalleryDataSource {
  const LocalGalleryDataSource();

  Future<void> cacheItems({
    required List<GalleryItem> galleryItems,
  });

  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required ContentLanguage language,
  });

  Future<GalleryItem?> getItem({
    required Date date,
    required ContentLanguage language,
  });
}

class DriftGalleryDataSource implements LocalGalleryDataSource {
  const DriftGalleryDataSource({
    required AppDatabase database,
  }) : _database = database;

  final AppDatabase _database;

  @override
  Future<void> cacheItems({
    required List<GalleryItem> galleryItems,
  }) async {
    if (galleryItems.isEmpty) {
      return;
    }

    await _database.batch(
      (batch) {
        batch.insertAll(
          _database.galleryBaseEntities,
          galleryItems.map(
            (i) => GalleryBaseEntity(
              date: i.date,
              copyright: i.copyright,
              type: i.type,
            ),
          ),
          onConflict: DoNothing<Table, dynamic>(),
        );
      },
    );

    await _database.batch(
      (batch) {
        batch.insertAll(
          _database.galleryInfoEntities,
          galleryItems.map(
            (i) => GalleryInfoEntity(
              date: i.date,
              language: i.info.language,
              originalLanguage: i.info.originalLanguage,
              title: i.info.title,
              explanation: i.info.explanation,
            ),
          ),
          onConflict: DoNothing<Table, dynamic>(),
        );
      },
    );

    final detailedImages =
        galleryItems.where((i) => i.type == GalleryItemType.image).toList();

    if (detailedImages.isNotEmpty) {
      await _database.batch(
        (batch) {
          batch.insertAll(
            _database.galleryImageEntities,
            detailedImages.map(
              (i) {
                final media = i.media as GalleryImage;

                return GalleryImageEntity(
                  date: i.date,
                  uri: media.uri,
                  hdUri: media.hdUri,
                  thumbUri: media.thumbUri,
                  aspectRatio: media.aspectRatio,
                  aspectRatioThumb: media.aspectRatioThumb,
                  blurHash: media.blurHash,
                  blurHashThumb: media.blurHashThumb,
                );
              },
            ),
            onConflict: DoNothing<Table, dynamic>(),
          );
        },
      );
    }

    final videos =
        galleryItems.where((i) => i.type == GalleryItemType.video).toList();

    if (videos.isNotEmpty) {
      await _database.batch(
        (batch) {
          batch.insertAll(
            _database.galleryVideoEntities,
            videos.map(
              (i) {
                final media = i.media as GalleryVideo;

                return GalleryVideoEntity(
                  date: i.date,
                  uri: media.uri,
                );
              },
            ),
            onConflict: DoNothing<Table, dynamic>(),
          );
        },
      );
    }

    final others =
        galleryItems.where((i) => i.type == GalleryItemType.other).toList();

    if (others.isNotEmpty) {
      await _database.batch(
        (batch) {
          batch.insertAll(
            _database.galleryOtherEntities,
            others.map(
              (i) {
                final media = i.media as GalleryOther;

                return GalleryOtherEntity(
                  date: i.date,
                  uri: media.uri,
                );
              },
            ),
            onConflict: DoNothing<Table, dynamic>(),
          );
        },
      );
    }

    final empty =
        galleryItems.where((i) => i.type == GalleryItemType.empty).toList();

    if (empty.isNotEmpty) {
      await _database.batch(
        (batch) {
          batch.insertAll(
            _database.galleryEmptyEntities,
            empty.map(
              (i) => GalleryEmptyEntity(date: i.date),
            ),
            onConflict: DoNothing<Table, dynamic>(),
          );
        },
      );
    }
  }

  @override
  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required ContentLanguage language,
  }) async {
    final startDateInt = startDate.toInt();
    final endDateInt = endDate.toInt();

    final baseTable = _database.galleryBaseEntities;
    final infoTable = _database.galleryInfoEntities;
    final imageTable = _database.galleryImageEntities;
    final videoTable = _database.galleryVideoEntities;
    final otherTable = _database.galleryOtherEntities;

    final query = _database.select(baseTable).join(
      [
        leftOuterJoin(
          imageTable,
          imageTable.date.equalsExp(baseTable.date),
        ),
        leftOuterJoin(
          videoTable,
          videoTable.date.equalsExp(baseTable.date),
        ),
        leftOuterJoin(
          otherTable,
          otherTable.date.equalsExp(baseTable.date),
        ),
        innerJoin(infoTable, infoTable.date.equalsExp(baseTable.date)),
      ],
    )
      ..where(baseTable.date.isBetweenValues(startDateInt, endDateInt))
      ..where(infoTable.language.equals(language.name))
      ..orderBy([OrderingTerm.desc(baseTable.date)]);

    final queryResult = await query.get();

    final models = queryResult.map(
      (r) {
        final base = r.readTable(baseTable);
        final info = r.readTable(infoTable);

        final media = _readMedia(result: r, type: base.type);

        return GalleryItem(
          date: base.date,
          copyright: base.copyright,
          isFavorite: false,
          media: media,
          info: GalleryInfo(
            language: info.language,
            originalLanguage: info.originalLanguage,
            title: info.title,
            explanation: info.explanation,
          ),
        );
      },
    ).toList();

    return models;
  }

  GalleryMedia _readMedia({
    required TypedResult result,
    required GalleryItemType type,
  }) {
    switch (type) {
      case GalleryItemType.image:
        final detailedImage = result.readTable(_database.galleryImageEntities);

        return GalleryImage(
          uri: detailedImage.uri,
          hdUri: detailedImage.hdUri,
          thumbUri: detailedImage.thumbUri,
          aspectRatio: detailedImage.aspectRatio,
          aspectRatioThumb: detailedImage.aspectRatioThumb,
          blurHash: detailedImage.blurHash,
          blurHashThumb: detailedImage.blurHashThumb,
        );

      case GalleryItemType.video:
        final video = result.readTable(_database.galleryVideoEntities);

        return GalleryVideo(
          uri: video.uri,
        );

      case GalleryItemType.other:
        final other = result.readTable(_database.galleryOtherEntities);

        return GalleryOther(
          uri: other.uri,
        );

      case GalleryItemType.empty:
        return const GalleryEmpty();
    }
  }

  @override
  Future<GalleryItem?> getItem({
    required Date date,
    required ContentLanguage language,
  }) async {
    return (await getItems(
      startDate: date,
      endDate: date,
      language: language,
    ))
        .firstOrNull;
  }

  // void insertOrIgnore({
  //   required GalleryBaseEntities table,
  //   required Function(dynamic t) keyPredicateBuilder,
  //   required Iterable<GalleryBaseEntity> rowsToInsert,
  // }) {}
}
