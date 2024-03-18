import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:postgres/postgres.dart';

typedef PostgresPool = Pool<dynamic>;

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
}

class PostgresGalleryDataSource implements LocalGalleryDataSource {
  const PostgresGalleryDataSource({
    required PostgresPool postgresPool,
  }) : _postgresPool = postgresPool;

  final PostgresPool _postgresPool;

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

    await _postgresPool.runTx(
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
    required ContentLanguage language,
  }) async {
    final result = await _postgresPool.execute(
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
