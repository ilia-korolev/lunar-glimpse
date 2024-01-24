// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apod_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApodResponseDto _$ApodResponseDtoFromJson(Map<String, dynamic> json) {
  return _ApodResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApodResponseDto {
  @DateConverter()
  Date get date => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  GalleryItemType get mediaType => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'hdurl')
  String? get hdUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApodResponseDtoCopyWith<ApodResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApodResponseDtoCopyWith<$Res> {
  factory $ApodResponseDtoCopyWith(
          ApodResponseDto value, $Res Function(ApodResponseDto) then) =
      _$ApodResponseDtoCopyWithImpl<$Res, ApodResponseDto>;
  @useResult
  $Res call(
      {@DateConverter() Date date,
      String explanation,
      String title,
      String url,
      @JsonKey(name: 'media_type') GalleryItemType mediaType,
      String? copyright,
      @JsonKey(name: 'hdurl') String? hdUrl});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class _$ApodResponseDtoCopyWithImpl<$Res, $Val extends ApodResponseDto>
    implements $ApodResponseDtoCopyWith<$Res> {
  _$ApodResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? title = null,
    Object? url = null,
    Object? mediaType = null,
    Object? copyright = freezed,
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as GalleryItemType,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      hdUrl: freezed == hdUrl
          ? _value.hdUrl
          : hdUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApodResponseDtoImplCopyWith<$Res>
    implements $ApodResponseDtoCopyWith<$Res> {
  factory _$$ApodResponseDtoImplCopyWith(_$ApodResponseDtoImpl value,
          $Res Function(_$ApodResponseDtoImpl) then) =
      __$$ApodResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateConverter() Date date,
      String explanation,
      String title,
      String url,
      @JsonKey(name: 'media_type') GalleryItemType mediaType,
      String? copyright,
      @JsonKey(name: 'hdurl') String? hdUrl});

  @override
  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$$ApodResponseDtoImplCopyWithImpl<$Res>
    extends _$ApodResponseDtoCopyWithImpl<$Res, _$ApodResponseDtoImpl>
    implements _$$ApodResponseDtoImplCopyWith<$Res> {
  __$$ApodResponseDtoImplCopyWithImpl(
      _$ApodResponseDtoImpl _value, $Res Function(_$ApodResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? title = null,
    Object? url = null,
    Object? mediaType = null,
    Object? copyright = freezed,
    Object? hdUrl = freezed,
  }) {
    return _then(_$ApodResponseDtoImpl(
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as GalleryItemType,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
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
class _$ApodResponseDtoImpl extends _ApodResponseDto {
  const _$ApodResponseDtoImpl(
      {@DateConverter() required this.date,
      required this.explanation,
      required this.title,
      required this.url,
      @JsonKey(name: 'media_type') required this.mediaType,
      this.copyright,
      @JsonKey(name: 'hdurl') this.hdUrl})
      : super._();

  factory _$ApodResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApodResponseDtoImplFromJson(json);

  @override
  @DateConverter()
  final Date date;
  @override
  final String explanation;
  @override
  final String title;
  @override
  final String url;
  @override
  @JsonKey(name: 'media_type')
  final GalleryItemType mediaType;
  @override
  final String? copyright;
  @override
  @JsonKey(name: 'hdurl')
  final String? hdUrl;

  @override
  String toString() {
    return 'ApodResponseDto(date: $date, explanation: $explanation, title: $title, url: $url, mediaType: $mediaType, copyright: $copyright, hdUrl: $hdUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApodResponseDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.hdUrl, hdUrl) || other.hdUrl == hdUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, explanation, title, url, mediaType, copyright, hdUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApodResponseDtoImplCopyWith<_$ApodResponseDtoImpl> get copyWith =>
      __$$ApodResponseDtoImplCopyWithImpl<_$ApodResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApodResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApodResponseDto extends ApodResponseDto {
  const factory _ApodResponseDto(
      {@DateConverter() required final Date date,
      required final String explanation,
      required final String title,
      required final String url,
      @JsonKey(name: 'media_type') required final GalleryItemType mediaType,
      final String? copyright,
      @JsonKey(name: 'hdurl') final String? hdUrl}) = _$ApodResponseDtoImpl;
  const _ApodResponseDto._() : super._();

  factory _ApodResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApodResponseDtoImpl.fromJson;

  @override
  @DateConverter()
  Date get date;
  @override
  String get explanation;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(name: 'media_type')
  GalleryItemType get mediaType;
  @override
  String? get copyright;
  @override
  @JsonKey(name: 'hdurl')
  String? get hdUrl;
  @override
  @JsonKey(ignore: true)
  _$$ApodResponseDtoImplCopyWith<_$ApodResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
