import 'package:astro_backend/core/_export.dart';
import 'package:astro_backend/data/_export.dart';
import 'package:astro_common/astro_common.dart';

abstract interface class LocalNewsDataSource {
  const LocalNewsDataSource();

  Future<List<NewsSource>> getSources();
}

class PostgresNewsDataSource implements LocalNewsDataSource {
  const PostgresNewsDataSource({
    required PostgresPool postgresPool,
  }) : _postgresPool = postgresPool;

  final PostgresPool _postgresPool;

  @override
  Future<List<NewsSource>> getSources() async {
    final result = await _postgresPool.execute(
      'SELECT * FROM news_sources g;',
    );

    final models = result
        .map((r) => NewsSourceEntity.fromQueryResult(queryResult: r).toModel())
        .toList();

    return models;
  }
}
