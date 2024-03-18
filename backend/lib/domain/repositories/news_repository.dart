import 'package:astro_backend/data/_export.dart';
import 'package:astro_common/astro_common.dart';

abstract interface class NewsRepository {
  const NewsRepository();

  Future<List<NewsSource>> getSources();
}

class NewsRepositoryImpl implements NewsRepository {
  NewsRepositoryImpl({
    required LocalNewsDataSource localNewsDataSource,
  }) : _localNewsDataSource = localNewsDataSource;

  final LocalNewsDataSource _localNewsDataSource;

  @override
  Future<List<NewsSource>> getSources() {
    return _localNewsDataSource.getSources();
  }
}
