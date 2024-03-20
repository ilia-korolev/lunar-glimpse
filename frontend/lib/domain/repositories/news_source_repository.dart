import 'dart:async';

import 'package:astro_common/astro_common.dart';
import 'package:collection/collection.dart';
import 'package:frontend/data/_export.dart';

abstract interface class NewsSourceRepository {
  const NewsSourceRepository();

  Stream<List<NewsSource>> get sourceStream;

  Future<List<NewsSource>> fetchSources();

  Future<void> toggleShowSources({
    required List<NewsSource> sources,
  });
}

class NewsSourceRepositoryImpl implements NewsSourceRepository {
  NewsSourceRepositoryImpl({
    required RemoteNewsSourceDataSource remoteNewsSourceDataSource,
    required LocalNewsSourceDataSource localNewsSourceDataSource,
  })  : _remoteNewsSourceDataSource = remoteNewsSourceDataSource,
        _localNewsSourceDataSource = localNewsSourceDataSource;

  final RemoteNewsSourceDataSource _remoteNewsSourceDataSource;
  final LocalNewsSourceDataSource _localNewsSourceDataSource;

  final _sourceController = StreamController<List<NewsSource>>.broadcast();

  @override
  Stream<List<NewsSource>> get sourceStream => _sourceController.stream;

  @override
  Future<List<NewsSource>> fetchSources() async {
    final remoteSources = await _remoteNewsSourceDataSource.getNewsSources();
    final localSources = await _localNewsSourceDataSource.getNewsSources();

    NewsSource? findLocal(NewsSource source) =>
        localSources.firstWhereOrNull((l) => l.uri == source.uri);

    final syncedSources = remoteSources
        .map(
          (r) => r.copyWith(isShown: findLocal(r)?.isShown ?? r.isShown),
        )
        .toList();

    await _localNewsSourceDataSource.deleteAllSources();

    await _localNewsSourceDataSource.cacheNewsSources(
      newsSources: syncedSources,
    );

    return syncedSources;
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
