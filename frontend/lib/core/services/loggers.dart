import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class DeveloperLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    final sb = StringBuffer();

    for (final l in event.lines) {
      sb.writeln(l);
    }

    log(sb.toString());
  }
}

class LoggingBlocObserver extends BlocObserver {
  LoggingBlocObserver({
    required Logger logger,
  }) : _logger = logger;

  final Logger _logger;

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    _logger.i('''
Bloc.onChange(
  name: ${bloc.runtimeType},
  currentState: ${change.currentState},
  nextState: ${change.nextState},
)''');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    _logger.e(
      'Bloc.onError(${bloc.runtimeType})',
      error: error,
    );
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
