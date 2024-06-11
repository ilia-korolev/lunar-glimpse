import 'package:astro_common/astro_common.dart';

abstract interface class RemoteMultiLanguageGalleryDataSource {
  const RemoteMultiLanguageGalleryDataSource();

  Future<GalleryItem> getLatestItem({
    required ContentLanguage language,
  });

  Future<List<GalleryItem>> getGalleryItems({
    required Date startDate,
    required Date endDate,
    required ContentLanguage language,
  });
}

class AstroBackendGalleryDataSource
    implements RemoteMultiLanguageGalleryDataSource {
  const AstroBackendGalleryDataSource({
    required HttpService httpService,
    required String apiUrl,
  })  : _httpService = httpService,
        _apiUrl = apiUrl;

  static const earliestDate = Date(year: 1995, month: 6, day: 16);

  final HttpService _httpService;
  final String _apiUrl;

  @override
  Future<GalleryItem> getLatestItem({
    required ContentLanguage language,
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
    required ContentLanguage language,
  }) async {
    final startDateNormalized =
        startDate.compareTo(earliestDate) < 0 ? earliestDate : startDate;

    final request = AstroBackendGalleryItemsRequestDto(
      startDate: startDateNormalized,
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
