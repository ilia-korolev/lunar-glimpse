import 'package:astro_common/astro_common.dart';

abstract interface class RemoteNewsSourceDataSource {
  const RemoteNewsSourceDataSource();

  Future<List<NewsSource>> getNewsSources();
}

class BackendNewsSourceDataSource implements RemoteNewsSourceDataSource {
  const BackendNewsSourceDataSource({
    required HttpService httpService,
    required String apiUrl,
  })  : _httpService = httpService,
        _apiUrl = apiUrl;

  final HttpService _httpService;
  final String _apiUrl;

  @override
  Future<List<NewsSource>> getNewsSources() async {
    final response = await _httpService.get<List<dynamic>>(
      '$_apiUrl/news/sources',
      options: HttpOptions(responseType: HttpResponseType.json),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final newsSources = jsonData.reversed
        .map((e) => NewsSource.fromJson(e as Map<String, dynamic>))
        .toList();

    return newsSources;
  }
}
