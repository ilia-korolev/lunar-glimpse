import 'package:astro_common/astro_common.dart';

extension DateListX on List<Date> {
  List<Date> difference(Iterable<Date> other) {
    return toSet().difference(other.toSet()).toList();
  }

  List<Period> toPeriods() {
    if (isEmpty) {
      return [];
    }

    if (length == 1) {
      return [Period(startDate: first, endDate: first)];
    }

    final sortedList = List<Date>.from(this, growable: false)
      ..sort((a, b) => a.compareTo(b));

    final periods = <Period>[];

    var start = sortedList.first;
    var end = start;

    for (var i = 1; i < sortedList.length; ++i) {
      if (sortedList[i].difference(end).inDays == 1) {
        end = sortedList[i];
      } else {
        periods.add(Period(startDate: start, endDate: end));
        start = sortedList[i];
        end = start;
      }

      if (i == sortedList.length - 1) {
        periods.add(Period(startDate: start, endDate: end));
      }
    }

    return periods;
  }
}
