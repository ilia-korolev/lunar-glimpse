// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nasa_apod_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NasaApodRequestDto _$NasaApodRequestDtoFromJson(Map<String, dynamic> json) {
  return _NasaApodRequestDto.fromJson(json);
}

/// @nodoc
mixin _$NasaApodRequestDto {
  /// The date of the APOD image to retrieve.
  ///
  /// Cannot be used with count or startDate and endDate.
  ///
  /// Default value is today
  Date? get date => throw _privateConstructorUsedError;

  /// The start of a date range, when requesting date for a range of dates.
  ///
  /// Cannot be used with date or count.
  Date? get startDate => throw _privateConstructorUsedError;

  /// The end of the date range, when used with startDate.
  ///
  /// Cannot be used with date or count.
  ///
  /// Default value is today
  Date? get endDate => throw _privateConstructorUsedError;

  /// If this is specified then count randomly chosen images will be returned.
  ///
  /// Cannot be used with date or startDate and endDate.
  int? get count => throw _privateConstructorUsedError;

  /// Return the URL of video thumbnail.
  ///
  /// If an APOD is not a video, this parameter is ignored.
  bool get thumbs => throw _privateConstructorUsedError;

  /// api.nasa.gov key for expanded usage
  String get apiKey => throw _privateConstructorUsedError;

  /// Serializes this NasaApodRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NasaApodRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NasaApodRequestDtoCopyWith<NasaApodRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NasaApodRequestDtoCopyWith<$Res> {
  factory $NasaApodRequestDtoCopyWith(
          NasaApodRequestDto value, $Res Function(NasaApodRequestDto) then) =
      _$NasaApodRequestDtoCopyWithImpl<$Res, NasaApodRequestDto>;
  @useResult
  $Res call(
      {Date? date,
      Date? startDate,
      Date? endDate,
      int? count,
      bool thumbs,
      String apiKey});

  $DateCopyWith<$Res>? get date;
  $DateCopyWith<$Res>? get startDate;
  $DateCopyWith<$Res>? get endDate;
}

/// @nodoc
class _$NasaApodRequestDtoCopyWithImpl<$Res, $Val extends NasaApodRequestDto>
    implements $NasaApodRequestDtoCopyWith<$Res> {
  _$NasaApodRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NasaApodRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? count = freezed,
    Object? thumbs = null,
    Object? apiKey = null,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbs: null == thumbs
          ? _value.thumbs
          : thumbs // ignore: cast_nullable_to_non_nullable
              as bool,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of NasaApodRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  /// Create a copy of NasaApodRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get startDate {
    if (_value.startDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.startDate!, (value) {
      return _then(_value.copyWith(startDate: value) as $Val);
    });
  }

  /// Create a copy of NasaApodRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get endDate {
    if (_value.endDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.endDate!, (value) {
      return _then(_value.copyWith(endDate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NasaApodRequestDtoImplCopyWith<$Res>
    implements $NasaApodRequestDtoCopyWith<$Res> {
  factory _$$NasaApodRequestDtoImplCopyWith(_$NasaApodRequestDtoImpl value,
          $Res Function(_$NasaApodRequestDtoImpl) then) =
      __$$NasaApodRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date? date,
      Date? startDate,
      Date? endDate,
      int? count,
      bool thumbs,
      String apiKey});

  @override
  $DateCopyWith<$Res>? get date;
  @override
  $DateCopyWith<$Res>? get startDate;
  @override
  $DateCopyWith<$Res>? get endDate;
}

/// @nodoc
class __$$NasaApodRequestDtoImplCopyWithImpl<$Res>
    extends _$NasaApodRequestDtoCopyWithImpl<$Res, _$NasaApodRequestDtoImpl>
    implements _$$NasaApodRequestDtoImplCopyWith<$Res> {
  __$$NasaApodRequestDtoImplCopyWithImpl(_$NasaApodRequestDtoImpl _value,
      $Res Function(_$NasaApodRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NasaApodRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? count = freezed,
    Object? thumbs = null,
    Object? apiKey = null,
  }) {
    return _then(_$NasaApodRequestDtoImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbs: null == thumbs
          ? _value.thumbs
          : thumbs // ignore: cast_nullable_to_non_nullable
              as bool,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
class _$NasaApodRequestDtoImpl extends _NasaApodRequestDto {
  const _$NasaApodRequestDtoImpl(
      {this.date,
      this.startDate,
      this.endDate,
      this.count,
      this.thumbs = false,
      this.apiKey = 'DEMO_KEY'})
      : assert(
            (date == null) ||
                (startDate == null && endDate == null && count == null),
            'date cannot be used with count or startDate and endDate.'),
        assert(
            (startDate == null && endDate == null) ||
                (startDate != null && date == null && count == null),
            'startDate and endDate cannot be used with date or count.'),
        assert(
            (count == null) ||
                (date == null && startDate == null && endDate == null),
            'count cannot be used with date or startDate and endDate.'),
        super._();

  factory _$NasaApodRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NasaApodRequestDtoImplFromJson(json);

  /// The date of the APOD image to retrieve.
  ///
  /// Cannot be used with count or startDate and endDate.
  ///
  /// Default value is today
  @override
  final Date? date;

  /// The start of a date range, when requesting date for a range of dates.
  ///
  /// Cannot be used with date or count.
  @override
  final Date? startDate;

  /// The end of the date range, when used with startDate.
  ///
  /// Cannot be used with date or count.
  ///
  /// Default value is today
  @override
  final Date? endDate;

  /// If this is specified then count randomly chosen images will be returned.
  ///
  /// Cannot be used with date or startDate and endDate.
  @override
  final int? count;

  /// Return the URL of video thumbnail.
  ///
  /// If an APOD is not a video, this parameter is ignored.
  @override
  @JsonKey()
  final bool thumbs;

  /// api.nasa.gov key for expanded usage
  @override
  @JsonKey()
  final String apiKey;

  @override
  String toString() {
    return 'NasaApodRequestDto(date: $date, startDate: $startDate, endDate: $endDate, count: $count, thumbs: $thumbs, apiKey: $apiKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NasaApodRequestDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.thumbs, thumbs) || other.thumbs == thumbs) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, startDate, endDate, count, thumbs, apiKey);

  /// Create a copy of NasaApodRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NasaApodRequestDtoImplCopyWith<_$NasaApodRequestDtoImpl> get copyWith =>
      __$$NasaApodRequestDtoImplCopyWithImpl<_$NasaApodRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NasaApodRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _NasaApodRequestDto extends NasaApodRequestDto {
  const factory _NasaApodRequestDto(
      {final Date? date,
      final Date? startDate,
      final Date? endDate,
      final int? count,
      final bool thumbs,
      final String apiKey}) = _$NasaApodRequestDtoImpl;
  const _NasaApodRequestDto._() : super._();

  factory _NasaApodRequestDto.fromJson(Map<String, dynamic> json) =
      _$NasaApodRequestDtoImpl.fromJson;

  /// The date of the APOD image to retrieve.
  ///
  /// Cannot be used with count or startDate and endDate.
  ///
  /// Default value is today
  @override
  Date? get date;

  /// The start of a date range, when requesting date for a range of dates.
  ///
  /// Cannot be used with date or count.
  @override
  Date? get startDate;

  /// The end of the date range, when used with startDate.
  ///
  /// Cannot be used with date or count.
  ///
  /// Default value is today
  @override
  Date? get endDate;

  /// If this is specified then count randomly chosen images will be returned.
  ///
  /// Cannot be used with date or startDate and endDate.
  @override
  int? get count;

  /// Return the URL of video thumbnail.
  ///
  /// If an APOD is not a video, this parameter is ignored.
  @override
  bool get thumbs;

  /// api.nasa.gov key for expanded usage
  @override
  String get apiKey;

  /// Create a copy of NasaApodRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NasaApodRequestDtoImplCopyWith<_$NasaApodRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
