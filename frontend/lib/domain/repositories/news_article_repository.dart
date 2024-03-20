import 'dart:async';

import 'package:astro_common/astro_common.dart';

abstract interface class NewsArticleRepository {
  const NewsArticleRepository();

  Future<FetchNewsResult> fetchNews({required List<NewsSource> sources});
}

class NewsArticleRepositoryImpl implements NewsArticleRepository {
  NewsArticleRepositoryImpl({
    required RemoteNewsArticleDataSource remoteNewsDataSource,
  }) : _remoteNewsDataSource = remoteNewsDataSource;

  final RemoteNewsArticleDataSource _remoteNewsDataSource;

  @override
  Future<FetchNewsResult> fetchNews({required List<NewsSource> sources}) async {
    final articles = <Article>[];
    final failures = <NewsSource>[];

    for (final source in sources) {
      try {
        final response = await _remoteNewsDataSource.getNews(
          source: source,
        );

        articles.addAll(response);
      } on Exception catch (_) {
        failures.add(source);
      }
    }

    articles.sort((a, b) => b.date.compareTo(a.date));

    return FetchNewsResult(
      articles: articles,
      failures: failures,
    );
  }
}

class FetchNewsResult {
  const FetchNewsResult({
    required this.articles,
    required this.failures,
  });

  final List<Article> articles;
  final List<NewsSource> failures;
}
