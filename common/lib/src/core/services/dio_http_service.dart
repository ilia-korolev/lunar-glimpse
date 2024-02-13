import 'package:astro_common/astro_common.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class DioHttpService implements HttpService {
  DioHttpService({
    List<Interceptor> interceptors = const [],
  }) : _dio = Dio()..interceptors.addAll(interceptors);

  final Dio _dio;

  @override
  Future<HttpResponse<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final dioResponse = await _dio.get<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: _mapOptions(options),
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      final httpResponse = _mapResponse(dioResponse);

      return httpResponse;
    } on DioException catch (e) {
      if (e.requestOptions.path == NasaApodDataSource.path) {
        _handleNasaApodException(e);
      }

      rethrow;
    }
  }

  @override
  Future<HttpResponse<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final dioResponse = await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: _mapOptions(options),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      final httpResponse = _mapResponse(dioResponse);

      return httpResponse;
    } on DioException catch (e) {
      if (e.requestOptions.path == NasaApodDataSource.path) {
        _handleNasaApodException(e);
      }

      rethrow;
    }
  }

  HttpResponse<T> _mapResponse<T>(Response<T> dioResponse) {
    return HttpResponse(
      data: dioResponse.data,
    );
  }

  Options? _mapOptions(HttpOptions? options) {
    if (options == null) {
      return null;
    }

    return Options(
      responseType: _mapResponseType(options.responseType),
      followRedirects: options.followRedirects,
    );
  }

  ResponseType? _mapResponseType(HttpResponseType? responseType) =>
      switch (responseType) {
        null => null,
        HttpResponseType.json => ResponseType.json,
        HttpResponseType.stream => ResponseType.stream,
        HttpResponseType.plain => ResponseType.plain,
        HttpResponseType.bytes => ResponseType.bytes,
      };

  void _handleNasaApodException(DioException dioException) {
    final statusCode = dioException.response?.statusCode;

    if (statusCode == 403) {
      final data = dioException.response?.data as Map<String, dynamic>;
      final error = data['error']! as Map<String, dynamic>;
      final message = error['message'] as String;

      throw NasaApodException(
        statusCode: statusCode!,
        message: message,
      );
    }

    if (statusCode == 400) {
      final data = dioException.response?.data as Map<String, dynamic>;
      final message = data['msg'] as String;

      throw NasaApodException(
        statusCode: statusCode!,
        message: message,
      );
    }
  }
}

class LoggingDioInterceptor extends Interceptor {
  LoggingDioInterceptor({
    required Logger logger,
  }) : _logger = logger;

  final Logger _logger;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final stringBuffer = StringBuffer()
      ..writeln('--API Request--')
      ..writeln('METHOD: ${options.method}')
      ..write('URI: ${options.uri}');

    _logger.i(stringBuffer.toString());

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode;

    final stringBuffer = StringBuffer()
      ..writeln('--API Error--')
      ..writeln('STATUS CODE: $statusCode')
      ..write('URI: ${err.requestOptions.uri}');

    _logger.e(stringBuffer.toString());

    handler.next(err);
  }

  @override
  Future<void> onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    final stringBuffer = StringBuffer()
      ..writeln('--API Response--')
      ..writeln('STATUS CODE: ${response.statusCode}')
      ..write('URI: ${response.requestOptions.uri}');

    _logger.i(stringBuffer.toString());

    handler.next(response);
  }
}
