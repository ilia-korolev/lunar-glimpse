import 'package:astro_common/astro_common.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:xml/xml.dart';

abstract interface class RemoteNewsDataSource {
  const RemoteNewsDataSource();

  Future<List<Article>> getNews({
    required WebFeed webFeed,
  });
}

class RssNewsDataSource implements RemoteNewsDataSource {
  const RssNewsDataSource({
    required HttpService httpService,
    required WebFeedParser webFeedParser,
  })  : _httpService = httpService,
        _webFeedParser = webFeedParser;

  final HttpService _httpService;
  final WebFeedParser _webFeedParser;

  @override
  Future<List<Article>> getNews({
    required WebFeed webFeed,
  }) async {
    final response = await _httpService.get<dynamic>(webFeed.uri.toString());

    final xmlDocument = XmlDocument.parse(response.data as String);

    return _webFeedParser.parse(xmlDocument: xmlDocument, source: webFeed);
  }
}
