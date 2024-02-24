import 'package:astro_common/astro_common.dart';

abstract interface class RemoteMultiLanguageGalleryDataSource {
  const RemoteMultiLanguageGalleryDataSource();

  Future<GalleryItem> getLatestItem({
    required GalleryItemLanguage language,
  });

  Future<List<GalleryItem>> getGalleryItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  });
}

class AstroBackendGalleryDataSource
    implements RemoteMultiLanguageGalleryDataSource {
  const AstroBackendGalleryDataSource({
    required HttpService httpService,
    required String apiUrl,
  })  : _httpService = httpService,
        _apiUrl = apiUrl;

  final HttpService _httpService;
  final String _apiUrl;

  @override
  Future<GalleryItem> getLatestItem({
    required GalleryItemLanguage language,
  }) async {
    final request = AstroBackendGalleryLatestRequestDto(
      language: language,
    );

    final response = await _httpService.get<dynamic>(
      '$_apiUrl/gallery/latest',
      queryParameters: request.toJson(),
      options: HttpOptions(responseType: HttpResponseType.json),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final galleryItem = GalleryItem.fromJson(jsonData as Map<String, dynamic>);
    return galleryItem;
  }

  @override
  Future<List<GalleryItem>> getGalleryItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  }) async {
    final request = AstroBackendGalleryItemsRequestDto(
      startDate: startDate,
      endDate: endDate,
      language: language,
    );

    final response = await _httpService.get<List<dynamic>>(
      '$_apiUrl/gallery/items',
      queryParameters: request.toJson(),
      options: HttpOptions(responseType: HttpResponseType.json),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final galleryItems = jsonData.reversed
        .map((e) => GalleryItem.fromJson(e as Map<String, dynamic>))
        .toList();

    return galleryItems;
  }
}
