// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apod_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApodRequestDto _$ApodRequestDtoFromJson(Map<String, dynamic> json) {
  return _ApodRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApodRequestDto {
  /// The date of the APOD image to retrieve.
  ///
  /// Cannot be used with count or startDate and endDate.
  ///
  /// Default value is today
  @DateConverterNullable()
  Date? get date => throw _privateConstructorUsedError;

  /// The start of a date range, when requesting date for a range of dates.
  ///
  /// Cannot be used with date or count.
  @DateConverterNullable()
  Date? get startDate => throw _privateConstructorUsedError;

  /// The end of the date range, when used with startDate.
  ///
  /// Cannot be used with date or count.
  ///
  /// Default value is today
  @DateConverterNullable()
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApodRequestDtoCopyWith<ApodRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApodRequestDtoCopyWith<$Res> {
  factory $ApodRequestDtoCopyWith(
          ApodRequestDto value, $Res Function(ApodRequestDto) then) =
      _$ApodRequestDtoCopyWithImpl<$Res, ApodRequestDto>;
  @useResult
  $Res call(
      {@DateConverterNullable() Date? date,
      @DateConverterNullable() Date? startDate,
      @DateConverterNullable() Date? endDate,
      int? count,
      bool thumbs,
      String apiKey});

  $DateCopyWith<$Res>? get date;
  $DateCopyWith<$Res>? get startDate;
  $DateCopyWith<$Res>? get endDate;
}

/// @nodoc
class _$ApodRequestDtoCopyWithImpl<$Res, $Val extends ApodRequestDto>
    implements $ApodRequestDtoCopyWith<$Res> {
  _$ApodRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$_ApodRequestDtoCopyWith<$Res>
    implements $ApodRequestDtoCopyWith<$Res> {
  factory _$$_ApodRequestDtoCopyWith(
          _$_ApodRequestDto value, $Res Function(_$_ApodRequestDto) then) =
      __$$_ApodRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverterNullable() Date? date,
      @DateConverterNullable() Date? startDate,
      @DateConverterNullable() Date? endDate,
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
class __$$_ApodRequestDtoCopyWithImpl<$Res>
    extends _$ApodRequestDtoCopyWithImpl<$Res, _$_ApodRequestDto>
    implements _$$_ApodRequestDtoCopyWith<$Res> {
  __$$_ApodRequestDtoCopyWithImpl(
      _$_ApodRequestDto _value, $Res Function(_$_ApodRequestDto) _then)
      : super(_value, _then);

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
    return _then(_$_ApodRequestDto(
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
class _$_ApodRequestDto extends _ApodRequestDto {
  const _$_ApodRequestDto(
      {@DateConverterNullable() this.date,
      @DateConverterNullable() this.startDate,
      @DateConverterNullable() this.endDate,
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

  factory _$_ApodRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_ApodRequestDtoFromJson(json);

  /// The date of the APOD image to retrieve.
  ///
  /// Cannot be used with count or startDate and endDate.
  ///
  /// Default value is today
  @override
  @DateConverterNullable()
  final Date? date;

  /// The start of a date range, when requesting date for a range of dates.
  ///
  /// Cannot be used with date or count.
  @override
  @DateConverterNullable()
  final Date? startDate;

  /// The end of the date range, when used with startDate.
  ///
  /// Cannot be used with date or count.
  ///
  /// Default value is today
  @override
  @DateConverterNullable()
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
    return 'ApodRequestDto(date: $date, startDate: $startDate, endDate: $endDate, count: $count, thumbs: $thumbs, apiKey: $apiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApodRequestDto &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.thumbs, thumbs) || other.thumbs == thumbs) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, startDate, endDate, count, thumbs, apiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApodRequestDtoCopyWith<_$_ApodRequestDto> get copyWith =>
      __$$_ApodRequestDtoCopyWithImpl<_$_ApodRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApodRequestDtoToJson(
      this,
    );
  }
}

abstract class _ApodRequestDto extends ApodRequestDto {
  const factory _ApodRequestDto(
      {@DateConverterNullable() final Date? date,
      @DateConverterNullable() final Date? startDate,
      @DateConverterNullable() final Date? endDate,
      final int? count,
      final bool thumbs,
      final String apiKey}) = _$_ApodRequestDto;
  const _ApodRequestDto._() : super._();

  factory _ApodRequestDto.fromJson(Map<String, dynamic> json) =
      _$_ApodRequestDto.fromJson;

  @override

  /// The date of the APOD image to retrieve.
  ///
  /// Cannot be used with count or startDate and endDate.
  ///
  /// Default value is today
  @DateConverterNullable()
  Date? get date;
  @override

  /// The start of a date range, when requesting date for a range of dates.
  ///
  /// Cannot be used with date or count.
  @DateConverterNullable()
  Date? get startDate;
  @override

  /// The end of the date range, when used with startDate.
  ///
  /// Cannot be used with date or count.
  ///
  /// Default value is today
  @DateConverterNullable()
  Date? get endDate;
  @override

  /// If this is specified then count randomly chosen images will be returned.
  ///
  /// Cannot be used with date or startDate and endDate.
  int? get count;
  @override

  /// Return the URL of video thumbnail.
  ///
  /// If an APOD is not a video, this parameter is ignored.
  bool get thumbs;
  @override

  /// api.nasa.gov key for expanded usage
  String get apiKey;
  @override
  @JsonKey(ignore: true)
  _$$_ApodRequestDtoCopyWith<_$_ApodRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
