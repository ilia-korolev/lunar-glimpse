import 'package:astro_common/astro_common.dart';
import 'package:xml/xml.dart';

abstract interface class RemoteNewsArticleDataSource {
  const RemoteNewsArticleDataSource();

  Future<List<Article>> getNews({
    required NewsSource source,
  });
}

class BackendNewsArticleDataSource implements RemoteNewsArticleDataSource {
  const BackendNewsArticleDataSource({
    required HttpService httpService,
    required String apiUrl,
  })  : _httpService = httpService,
        _apiUrl = apiUrl;

  final HttpService _httpService;
  final String _apiUrl;

  @override
  Future<List<Article>> getNews({
    required NewsSource source,
  }) async {
    final request = AstroBackendNewsArticlesRequestDto(
      sourceUri: source.uri,
    );

    final response = await _httpService.get<List<dynamic>>(
      '$_apiUrl/news/articles',
      queryParameters: request.toJson(),
      options: HttpOptions(responseType: HttpResponseType.json),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final newsArticles = jsonData.reversed
        .map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList();

    return newsArticles;
  }
}

class RssNewsArticleDataSource implements RemoteNewsArticleDataSource {
  const RssNewsArticleDataSource({
    required HttpService httpService,
    required RssParser rssParser,
  })  : _httpService = httpService,
        _rssParser = rssParser;

  final HttpService _httpService;
  final RssParser _rssParser;

  @override
  Future<List<Article>> getNews({
    required NewsSource source,
  }) async {
    final response = await _httpService.get<dynamic>(source.uri.toString());

    final xmlDocument = XmlDocument.parse(response.data as String);

    return _rssParser.parse(xmlDocument: xmlDocument, source: source);
  }
}
