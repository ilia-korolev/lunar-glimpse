import 'dart:async';

import 'package:astro_common/astro_common.dart';

abstract interface class NewsArticleRepository {
  const NewsArticleRepository();

  Future<List<Article>> fetchNews({required NewsSource source});
}

class NewsArticleRepositoryImpl implements NewsArticleRepository {
  NewsArticleRepositoryImpl({
    required RemoteNewsArticleDataSource remoteNewsDataSource,
  }) : _remoteNewsDataSource = remoteNewsDataSource;

  final RemoteNewsArticleDataSource _remoteNewsDataSource;

  @override
  Future<List<Article>> fetchNews({required NewsSource source}) {
    return _remoteNewsDataSource.getNews(
      source: source,
    );
  }
}
