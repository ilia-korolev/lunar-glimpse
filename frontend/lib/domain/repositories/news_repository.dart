import 'dart:async';

import 'package:frontend/data/_export.dart';
import 'package:frontend/domain/_export.dart';

abstract interface class NewsRepository {
  const NewsRepository();

  Stream<List<NewsSource>> get sourceStream;

  Future<FetchNewsResult> fetchNews();

  Future<List<NewsSource>> fetchSources();

  Future<void> toggleShowSources({
    required List<NewsSource> sources,
  });
}

class NewsRepositoryImpl implements NewsRepository {
  NewsRepositoryImpl({
    required RemoteNewsDataSource remoteNewsDataSource,
    required LocalNewsSourceDataSource localNewsSourceDataSource,
  })  : _remoteNewsDataSource = remoteNewsDataSource,
        _localNewsSourceDataSource = localNewsSourceDataSource;

  final RemoteNewsDataSource _remoteNewsDataSource;
  final LocalNewsSourceDataSource _localNewsSourceDataSource;

  final _sourceController = StreamController<List<NewsSource>>.broadcast();

  @override
  Stream<List<NewsSource>> get sourceStream => _sourceController.stream;

  @override
  Future<FetchNewsResult> fetchNews() async {
    final articles = <Article>[];
    final failures = <NewsSource>[];
    final sources = await _localNewsSourceDataSource.getShownNewsSources();

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

  @override
  Future<List<NewsSource>> fetchSources() {
    return _localNewsSourceDataSource.getNewsSources();
  }

  @override
  Future<void> toggleShowSources({
    required List<NewsSource> sources,
  }) async {
    await _localNewsSourceDataSource.cacheNewsSources(
      newsSources: sources.map((i) => i.copyWith(isShown: !i.isShown)).toList(),
      onConflictUpdate: true,
    );

    final updatedFeeds = await _localNewsSourceDataSource.getNewsSources();

    _sourceController.add(updatedFeeds);
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
