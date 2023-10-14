import 'package:dio/dio.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';

abstract interface class RemoteDailyMediaDataSource {
  const RemoteDailyMediaDataSource();

  Future<Media> getTodayMedia();

  Future<List<Media>> getDailyMedia({
    required Date startDate,
    required Date endDate,
  });
}

class NasaApodDataSource implements RemoteDailyMediaDataSource {
  const NasaApodDataSource({
    required HttpService httpService,
    String apiKey = 'DEMO_KEY',
  })  : _dio = httpService,
        _apiKey = apiKey;

  final HttpService _dio;
  final String _apiKey;

  @override
  Future<Media> getTodayMedia() async {
    final request = ApodRequestDto(
      apiKey: _apiKey,
    );

    final response = await _dio.get<dynamic>(
      'https://api.nasa.gov/planetary/apod',
      queryParameters: request.toJson(),
      options: Options(responseType: ResponseType.json),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final mediaDto = ApodResponseDto.fromJson(jsonData as Map<String, dynamic>);
    final media = mediaDto.toModel();

    return media;
  }

  @override
  Future<List<Media>> getDailyMedia({
    required Date startDate,
    required Date endDate,
  }) async {
    final request = ApodRequestDto(
      startDate: startDate,
      endDate: endDate,
      apiKey: _apiKey,
    );

    final response = await _dio.get<List<dynamic>>(
      'https://api.nasa.gov/planetary/apod',
      queryParameters: request.toJson(),
      options: Options(responseType: ResponseType.json),
    );

    final jsonData = response.data;

    if (jsonData == null) {
      throw InvalidResponseException();
    }

    final mediaList = jsonData.reversed
        .map((e) => ApodResponseDto.fromJson(e as Map<String, dynamic>))
        .map((e) => e.toModel())
        .toList();

    return mediaList;
  }
}
