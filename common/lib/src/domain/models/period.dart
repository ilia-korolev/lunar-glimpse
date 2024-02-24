import 'package:astro_common/astro_common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'period.freezed.dart';

@freezed
@immutable
class Period with _$Period {
  @Assert(
    'startDate <= endDate',
    'The start date must not be after the end date',
  )
  const factory Period({
    required Date startDate,
    required Date endDate,
  }) = _Period;
}
