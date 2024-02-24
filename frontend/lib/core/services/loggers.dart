import 'dart:developer';

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

    _logger.i(
        '''
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
