// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nasa_apod_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NasaApodResponseDto _$NasaApodResponseDtoFromJson(Map<String, dynamic> json) {
  return _NasaApodResponseDto.fromJson(json);
}

/// @nodoc
mixin _$NasaApodResponseDto {
  Date get date => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  GalleryItemType get mediaType => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'hdurl')
  String? get hdUrl => throw _privateConstructorUsedError;

  /// Serializes this NasaApodResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NasaApodResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NasaApodResponseDtoCopyWith<NasaApodResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NasaApodResponseDtoCopyWith<$Res> {
  factory $NasaApodResponseDtoCopyWith(
          NasaApodResponseDto value, $Res Function(NasaApodResponseDto) then) =
      _$NasaApodResponseDtoCopyWithImpl<$Res, NasaApodResponseDto>;
  @useResult
  $Res call(
      {Date date,
      String explanation,
      String title,
      @JsonKey(name: 'media_type') GalleryItemType mediaType,
      String? copyright,
      String? url,
      @JsonKey(name: 'hdurl') String? hdUrl});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class _$NasaApodResponseDtoCopyWithImpl<$Res, $Val extends NasaApodResponseDto>
    implements $NasaApodResponseDtoCopyWith<$Res> {
  _$NasaApodResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NasaApodResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? title = null,
    Object? mediaType = null,
    Object? copyright = freezed,
    Object? url = freezed,
    Object? hdUrl = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as GalleryItemType,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      hdUrl: freezed == hdUrl
          ? _value.hdUrl
          : hdUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of NasaApodResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NasaApodResponseDtoImplCopyWith<$Res>
    implements $NasaApodResponseDtoCopyWith<$Res> {
  factory _$$NasaApodResponseDtoImplCopyWith(_$NasaApodResponseDtoImpl value,
          $Res Function(_$NasaApodResponseDtoImpl) then) =
      __$$NasaApodResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date date,
      String explanation,
      String title,
      @JsonKey(name: 'media_type') GalleryItemType mediaType,
      String? copyright,
      String? url,
      @JsonKey(name: 'hdurl') String? hdUrl});

  @override
  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$$NasaApodResponseDtoImplCopyWithImpl<$Res>
    extends _$NasaApodResponseDtoCopyWithImpl<$Res, _$NasaApodResponseDtoImpl>
    implements _$$NasaApodResponseDtoImplCopyWith<$Res> {
  __$$NasaApodResponseDtoImplCopyWithImpl(_$NasaApodResponseDtoImpl _value,
      $Res Function(_$NasaApodResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NasaApodResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? title = null,
    Object? mediaType = null,
    Object? copyright = freezed,
    Object? url = freezed,
    Object? hdUrl = freezed,
  }) {
    return _then(_$NasaApodResponseDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as GalleryItemType,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      hdUrl: freezed == hdUrl
          ? _value.hdUrl
          : hdUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$NasaApodResponseDtoImpl extends _NasaApodResponseDto {
  const _$NasaApodResponseDtoImpl(
      {required this.date,
      required this.explanation,
      required this.title,
      @JsonKey(name: 'media_type') required this.mediaType,
      this.copyright,
      this.url,
      @JsonKey(name: 'hdurl') this.hdUrl})
      : super._();

  factory _$NasaApodResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NasaApodResponseDtoImplFromJson(json);

  @override
  final Date date;
  @override
  final String explanation;
  @override
  final String title;
  @override
  @JsonKey(name: 'media_type')
  final GalleryItemType mediaType;
  @override
  final String? copyright;
  @override
  final String? url;
  @override
  @JsonKey(name: 'hdurl')
  final String? hdUrl;

  @override
  String toString() {
    return 'NasaApodResponseDto(date: $date, explanation: $explanation, title: $title, mediaType: $mediaType, copyright: $copyright, url: $url, hdUrl: $hdUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NasaApodResponseDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.hdUrl, hdUrl) || other.hdUrl == hdUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, explanation, title, mediaType, copyright, url, hdUrl);

  /// Create a copy of NasaApodResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NasaApodResponseDtoImplCopyWith<_$NasaApodResponseDtoImpl> get copyWith =>
      __$$NasaApodResponseDtoImplCopyWithImpl<_$NasaApodResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NasaApodResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _NasaApodResponseDto extends NasaApodResponseDto {
  const factory _NasaApodResponseDto(
      {required final Date date,
      required final String explanation,
      required final String title,
      @JsonKey(name: 'media_type') required final GalleryItemType mediaType,
      final String? copyright,
      final String? url,
      @JsonKey(name: 'hdurl') final String? hdUrl}) = _$NasaApodResponseDtoImpl;
  const _NasaApodResponseDto._() : super._();

  factory _NasaApodResponseDto.fromJson(Map<String, dynamic> json) =
      _$NasaApodResponseDtoImpl.fromJson;

  @override
  Date get date;
  @override
  String get explanation;
  @override
  String get title;
  @override
  @JsonKey(name: 'media_type')
  GalleryItemType get mediaType;
  @override
  String? get copyright;
  @override
  String? get url;
  @override
  @JsonKey(name: 'hdurl')
  String? get hdUrl;

  /// Create a copy of NasaApodResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NasaApodResponseDtoImplCopyWith<_$NasaApodResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
