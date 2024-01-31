import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apod_request_dto.freezed.dart';
part 'apod_request_dto.g.dart';

@freezed
class ApodRequestDto with _$ApodRequestDto {
  @JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
  @Assert(
    '''(date == null) || (startDate == null && endDate == null && count == null)''',
    '''date cannot be used with count or startDate and endDate.''',
  )
  @Assert(
    '''(startDate == null && endDate == null) || (startDate != null && date == null && count == null)''',
    '''startDate and endDate cannot be used with date or count.''',
  )
  @Assert(
    '''(count == null) || (date == null && startDate == null && endDate == null)''',
    '''count cannot be used with date or startDate and endDate.''',
  )
  const factory ApodRequestDto({
    /// The date of the APOD image to retrieve.
    ///
    /// Cannot be used with count or startDate and endDate.
    ///
    /// Default value is today
    Date? date,

    /// The start of a date range, when requesting date for a range of dates.
    ///
    /// Cannot be used with date or count.
    Date? startDate,

    /// The end of the date range, when used with startDate.
    ///
    /// Cannot be used with date or count.
    ///
    /// Default value is today
    Date? endDate,

    /// If this is specified then count randomly chosen images will be returned.
    ///
    /// Cannot be used with date or startDate and endDate.
    int? count,

    /// Return the URL of video thumbnail.
    ///
    /// If an APOD is not a video, this parameter is ignored.
    @Default(false) bool thumbs,

    /// api.nasa.gov key for expanded usage
    @Default('DEMO_KEY') String apiKey,
  }) = _ApodRequestDto;

  const ApodRequestDto._();

  factory ApodRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApodRequestDtoFromJson(json);
}
