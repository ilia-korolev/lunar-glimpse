import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';

abstract interface class NewsRepository {
  const NewsRepository();

  Future<FetchNewsResult> fetchNews({
    required List<WebFeed> webFeeds,
  });
}

class NewsRepositoryImpl implements NewsRepository {
  const NewsRepositoryImpl({
    required RemoteNewsDataSource remoteNewsDataSource,
  }) : _remoteNewsDataSource = remoteNewsDataSource;

  final RemoteNewsDataSource _remoteNewsDataSource;

  @override
  Future<FetchNewsResult> fetchNews({
    required List<WebFeed> webFeeds,
  }) async {
    final articles = <Article>[];
    final failures = <WebFeed>[];

    for (final webFeed in webFeeds) {
      try {
        final response = await _remoteNewsDataSource.getNews(
          webFeed: webFeed,
        );

        articles.addAll(response);
      } on Exception catch (_) {
        failures.add(webFeed);
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
  final List<WebFeed> failures;
}
