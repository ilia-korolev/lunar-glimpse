import 'package:astro_common/astro_common.dart';

abstract interface class RemoteTranslationDataSource {
  const RemoteTranslationDataSource();

  Future<List<String>> translateText({
    required List<String> source,
    required String sourceLanguage,
    required String targetLanguage,
  });
}

enum DeepLApi {
  free;

  String get uri {
    return switch (this) {
      DeepLApi.free => 'https://api-free.deepl.com/v2',
    };
  }
}

class DeepLTranslationDataSource implements RemoteTranslationDataSource {
  const DeepLTranslationDataSource({
    required HttpService httpService,
    required DeepLApi deepLApi,
    required String apiKey,
  })  : _httpService = httpService,
        _deepLApi = deepLApi,
        _apiKey = apiKey;

  final HttpService _httpService;
  final DeepLApi _deepLApi;
  final String _apiKey;

  @override
  Future<List<String>> translateText({
    required List<String> source,
    required String sourceLanguage,
    required String targetLanguage,
  }) async {
    final response = await _httpService.post<dynamic>(
      '${_deepLApi.uri}/translate',
      options: HttpOptions(
        headers: {
          'Authorization': 'DeepL-Auth-Key $_apiKey',
        },
        responseType: HttpResponseType.json,
      ),
      data: DeepLTranslateTextRequestDto(
        source: source,
        sourceLanguage: sourceLanguage,
        targetLanguage: targetLanguage,
      ).toJson(),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final translations = (jsonData as Map<String, dynamic>)['translations'];

    if (translations == null) {
      throw InvalidResponseException();
    }

    final result = (translations as List<Map<String, dynamic>>)
        .map(
          (json) => GoogleTextTranslation.fromJson(json).translatedText,
        )
        .toList();

    return result;
  }
}

class GoogleTranslationDataSource implements RemoteTranslationDataSource {
  const GoogleTranslationDataSource({
    required HttpService httpService,
    required String apiKey,
  })  : _httpService = httpService,
        _apiKey = apiKey;

  final HttpService _httpService;
  final String _apiKey;

  @override
  Future<List<String>> translateText({
    required List<String> source,
    required String sourceLanguage,
    required String targetLanguage,
  }) async {
    final response = await _httpService.post<dynamic>(
      'https://translation.googleapis.com/language/translate/v2?key=$_apiKey',
      options: HttpOptions(responseType: HttpResponseType.json),
      data: GoogleTranslateTextRequestDto(
        source: source,
        sourceLanguage: sourceLanguage,
        targetLanguage: targetLanguage,
      ).toJson(),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final data = (jsonData as Map<String, dynamic>)['data'];

    if (data == null) {
      throw InvalidResponseException();
    }

    final translations = (data as Map<String, dynamic>)['translations'];

    if (translations == null) {
      throw InvalidResponseException();
    }

    final result = (translations as List<dynamic>)
        .map(
          (json) => GoogleTextTranslation.fromJson(
            json as Map<String, dynamic>,
          ).translatedText,
        )
        .toList();

    return result;
  }
}
