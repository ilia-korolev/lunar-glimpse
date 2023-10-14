import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class DioLoggingInterceptor extends Interceptor {
  DioLoggingInterceptor({
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
