import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:postgres/postgres.dart';

abstract interface class LocalGalleryDataSource {
  const LocalGalleryDataSource();

  Future<void> cacheItems({
    required List<GalleryItem> galleryItems,
  });

  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  });
}

class PostgresGalleryDataSource implements LocalGalleryDataSource {
  const PostgresGalleryDataSource({
    required Connection dbConnection,
  }) : _dbConnection = dbConnection;

  final Connection _dbConnection;

  @override
  Future<void> cacheItems({
    required List<GalleryItem> galleryItems,
  }) async {
    if (galleryItems.isEmpty) {
      return;
    }

    final entities = galleryItems.map((e) => GalleryEntity.fromModel(model: e));

    final baseInsertValues =
        entities.map((e) => e.toGalleryInsertString()).join(',');

    final translationInsertValues =
        entities.map((e) => e.toGalleryTranslationsInsertString()).join(',');

    await _dbConnection.runTx(
      (session) async {
        await session.execute(
          '''
          INSERT INTO gallery (date, uri, hd_uri, copyright, type)
          VALUES
            $baseInsertValues
          ON CONFLICT DO NOTHING;
''',
        );

        await session.execute(
          '''
          INSERT INTO gallery_translations (date, language, original_language, title, explanation)
          VALUES
            $translationInsertValues
          ON CONFLICT DO NOTHING;
''',
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
    final result = await _dbConnection.execute(
      '''
      SELECT 
        g.date,
        g.uri,
        g.hd_uri,
        g.copyright,
        g.type,
        t.language,
        t.original_language,
        t.title,
        t.explanation
      FROM gallery g
      JOIN gallery_translations t ON g.date = t.date
      WHERE g.date >= '${startDate.format('yyyy-MM-dd')}'::date
      AND g.date <= '${endDate.format('yyyy-MM-dd')}'::date
      AND t.language = '${language.name}';
''',
    );

    final models = result
        .map((r) => GalleryEntity.fromQueryResult(queryResult: r).toModel())
        .toList();

    return models;
  }
}
