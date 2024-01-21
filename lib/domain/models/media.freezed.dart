// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Media {
  Uri get uri => throw _privateConstructorUsedError;
  Uri get hdUri => throw _privateConstructorUsedError;
  Date get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {Uri uri,
      Uri hdUri,
      Date date,
      String title,
      String explanation,
      String? copyright,
      MediaType type,
      bool isFavorite});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? hdUri = null,
    Object? date = null,
    Object? title = null,
    Object? explanation = null,
    Object? copyright = freezed,
    Object? type = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      hdUri: null == hdUri
          ? _value.hdUri
          : hdUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri uri,
      Uri hdUri,
      Date date,
      String title,
      String explanation,
      String? copyright,
      MediaType type,
      bool isFavorite});

  @override
  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? hdUri = null,
    Object? date = null,
    Object? title = null,
    Object? explanation = null,
    Object? copyright = freezed,
    Object? type = null,
    Object? isFavorite = null,
  }) {
    return _then(_$MediaImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      hdUri: null == hdUri
          ? _value.hdUri
          : hdUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MediaImpl implements _Media {
  const _$MediaImpl(
      {required this.uri,
      required this.hdUri,
      required this.date,
      required this.title,
      required this.explanation,
      required this.copyright,
      required this.type,
      this.isFavorite = false});

  @override
  final Uri uri;
  @override
  final Uri hdUri;
  @override
  final Date date;
  @override
  final String title;
  @override
  final String explanation;
  @override
  final String? copyright;
  @override
  final MediaType type;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'Media(uri: $uri, hdUri: $hdUri, date: $date, title: $title, explanation: $explanation, copyright: $copyright, type: $type, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.hdUri, hdUri) || other.hdUri == hdUri) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, hdUri, date, title,
      explanation, copyright, type, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);
}

abstract class _Media implements Media {
  const factory _Media(
      {required final Uri uri,
      required final Uri hdUri,
      required final Date date,
      required final String title,
      required final String explanation,
      required final String? copyright,
      required final MediaType type,
      final bool isFavorite}) = _$MediaImpl;

  @override
  Uri get uri;
  @override
  Uri get hdUri;
  @override
  Date get date;
  @override
  String get title;
  @override
  String get explanation;
  @override
  String? get copyright;
  @override
  MediaType get type;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
