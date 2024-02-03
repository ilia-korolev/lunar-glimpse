import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'date.freezed.dart';

@freezed
@immutable
class Date with _$Date {
  @Assert('year > 0', 'The year must be more than 0')
  @Assert('month > 0', 'The month must be more than 0')
  @Assert('day > 0', 'The day must be more than 0')
  @Assert('month <= 12', 'The month must be less or equal to 12')
  @Assert('day <= 31', 'The day must be less or equal to 31')
  const factory Date({
    required int year,
    required int month,
    required int day,
  }) = _Date;

  const Date._();

  factory Date.fromDateTime({
    required DateTime dateTime,
  }) {
    return Date(
      year: dateTime.year,
      month: dateTime.month,
      day: dateTime.day,
    );
  }

  /// The input format: yyyyMMdd
  factory Date.fromInt(int integer) {
    assert(
      integer.toString().length == 8,
      '''
Unable to create the date.
The input number must have 8 digits: $integer''',
    );

    final year = integer ~/ 10000;
    final month = (integer % 10000) ~/ 100;
    final day = integer % 100;

    return Date(year: year, month: month, day: day);
  }

  factory Date.fromJson(String json) {
    final dateTime = DateTime.parse(json);

    return Date.fromDateTime(dateTime: dateTime);
  }

  factory Date.parse(String string) {
    final dateTime = DateTime.parse(string);

    return Date.fromDateTime(dateTime: dateTime);
  }

  String toJson() {
    return format('yyyy-MM-dd');
  }

  DateTime toDateTime() {
    return DateTime.utc(year, month, day);
  }

  /// The output format: yyyyMMdd
  int toInt() {
    return (year * 10000) + (month * 100) + day;
  }

  String format(String pattern, [String? locale]) {
    final format = DateFormat(pattern, locale);

    return format.format(toDateTime());
  }

  Date get yesterday => subtract(const Duration(days: 1));

  Date add(Duration duration) {
    final dateTime = toDateTime().add(duration);

    return Date.fromDateTime(dateTime: dateTime);
  }

  Date subtract(Duration duration) {
    final dateTime = toDateTime().subtract(duration);

    return Date.fromDateTime(dateTime: dateTime);
  }

  Duration difference(Date other) {
    return toDateTime().difference(other.toDateTime());
  }

  /// Compares this Date object to [other],
  /// returning zero if the values are equal.
  ///
  /// A [compareTo] function returns:
  ///  * a negative value if this Date [isBefore] [other].
  ///  * `0` if this Date [isAtSameMomentAs] [other], and
  ///  * a positive value otherwise (when this Date [isAfter] [other]).
  int compareTo(Date other) {
    return toInt().compareTo(other.toInt());
  }
}
