import 'dart:developer';

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
