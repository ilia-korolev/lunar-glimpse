import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get sqlEscaped {
    final format = DateFormat('yyyy-MM-dd');

    return "'${format.format(this)}'";
  }
}

extension StringX on String {
  String get sqlEscaped {
    return "'${trim().replaceAll("'", "''")}'";
  }
}

extension StringNullX on String? {
  String get sqlEscaped {
    if (this?.isEmpty ?? true) {
      return 'NULL';
    }

    return "'${this!.trim().replaceAll("'", "''")}'";
  }
}
