import 'package:astro_common/astro_common.dart';

abstract interface class RemoteGalleryDataSource {
  const RemoteGalleryDataSource();

  GalleryItemLanguage get language;

  Future<GalleryItem> getLatestItem();

  Future<List<GalleryItem>> getGalleryItems({
    required Date startDate,
    required Date endDate,
  });
}

class NasaApodDataSource implements RemoteGalleryDataSource {
  const NasaApodDataSource({
    required HttpService httpService,
    String apiKey = 'DEMO_KEY',
  })  : _httpService = httpService,
        _apiKey = apiKey;

  static const earliestDate = Date(year: 1995, month: 6, day: 16);
  static const path = 'https://api.nasa.gov/planetary/apod';

  final HttpService _httpService;
  final String _apiKey;

  @override
  GalleryItemLanguage get language => GalleryItemLanguage.english;

  @override
  Future<GalleryItem> getLatestItem() async {
    final request = NasaApodRequestDto(
      apiKey: _apiKey,
    );

    final response = await _httpService.get<dynamic>(
      path,
      queryParameters: request.toJson(),
      options: HttpOptions(responseType: HttpResponseType.json),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final responseDto =
        NasaApodResponseDto.fromJson(jsonData as Map<String, dynamic>);
    final galleryItem = responseDto.toModel();

    return galleryItem;
  }

  @override
  Future<List<GalleryItem>> getGalleryItems({
    required Date startDate,
    required Date endDate,
  }) async {
    final request = NasaApodRequestDto(
      startDate: startDate,
      endDate: endDate,
      apiKey: _apiKey,
    );

    final response = await _httpService.get<List<dynamic>>(
      path,
      queryParameters: request.toJson(),
      options: HttpOptions(responseType: HttpResponseType.json),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final galleryItems = jsonData.reversed
        .map((e) => NasaApodResponseDto.fromJson(e as Map<String, dynamic>))
        .map((e) => e.toModel())
        .toList();

    return galleryItems;
  }
}
