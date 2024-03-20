import 'package:astro_backend/data/_export.dart';
import 'package:astro_common/astro_common.dart';

abstract interface class NewsSourceRepository {
  const NewsSourceRepository();

  Future<List<NewsSource>> getSources();
}

class NewsSourceRepositoryImpl implements NewsSourceRepository {
  NewsSourceRepositoryImpl({
    required LocalNewsSourceDataSource localNewsSourceDataSource,
  }) : _localNewsSourceDataSource = localNewsSourceDataSource;

  final LocalNewsSourceDataSource _localNewsSourceDataSource;

  @override
  Future<List<NewsSource>> getSources() {
    return _localNewsSourceDataSource.getSources();
  }
}
