import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';

abstract interface class WebFeedRepository {
  const WebFeedRepository();

  Future<List<WebFeed>> fetchWebFeeds();
  Future<List<WebFeed>> fetchWebFeedsToShow();
}

class WebFeedRepositoryImpl implements WebFeedRepository {
  const WebFeedRepositoryImpl({
    required LocalWebFeedDataSource localWebFeedDataSource,
  }) : _localWebFeedDataSource = localWebFeedDataSource;

  final LocalWebFeedDataSource _localWebFeedDataSource;

  @override
  Future<List<WebFeed>> fetchWebFeeds() async {
    return _localWebFeedDataSource.getWebFeeds();
  }

  @override
  Future<List<WebFeed>> fetchWebFeedsToShow() async {
    return _localWebFeedDataSource.getWebFeedsToShow();
  }
}
