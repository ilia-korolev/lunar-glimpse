// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WebFeed {
  Uri get uri => throw _privateConstructorUsedError;
  Uri get favicon => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;
  bool get isHidden => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WebFeedCopyWith<WebFeed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebFeedCopyWith<$Res> {
  factory $WebFeedCopyWith(WebFeed value, $Res Function(WebFeed) then) =
      _$WebFeedCopyWithImpl<$Res, WebFeed>;
  @useResult
  $Res call({Uri uri, Uri favicon, Locale locale, bool isHidden});
}

/// @nodoc
class _$WebFeedCopyWithImpl<$Res, $Val extends WebFeed>
    implements $WebFeedCopyWith<$Res> {
  _$WebFeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? favicon = null,
    Object? locale = null,
    Object? isHidden = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      favicon: null == favicon
          ? _value.favicon
          : favicon // ignore: cast_nullable_to_non_nullable
              as Uri,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebFeedImplCopyWith<$Res> implements $WebFeedCopyWith<$Res> {
  factory _$$WebFeedImplCopyWith(
          _$WebFeedImpl value, $Res Function(_$WebFeedImpl) then) =
      __$$WebFeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri uri, Uri favicon, Locale locale, bool isHidden});
}

/// @nodoc
class __$$WebFeedImplCopyWithImpl<$Res>
    extends _$WebFeedCopyWithImpl<$Res, _$WebFeedImpl>
    implements _$$WebFeedImplCopyWith<$Res> {
  __$$WebFeedImplCopyWithImpl(
      _$WebFeedImpl _value, $Res Function(_$WebFeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? favicon = null,
    Object? locale = null,
    Object? isHidden = null,
  }) {
    return _then(_$WebFeedImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      favicon: null == favicon
          ? _value.favicon
          : favicon // ignore: cast_nullable_to_non_nullable
              as Uri,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WebFeedImpl extends _WebFeed {
  const _$WebFeedImpl(
      {required this.uri,
      required this.favicon,
      required this.locale,
      required this.isHidden})
      : super._();

  @override
  final Uri uri;
  @override
  final Uri favicon;
  @override
  final Locale locale;
  @override
  final bool isHidden;

  @override
  String toString() {
    return 'WebFeed(uri: $uri, favicon: $favicon, locale: $locale, isHidden: $isHidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebFeedImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.favicon, favicon) || other.favicon == favicon) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, favicon, locale, isHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebFeedImplCopyWith<_$WebFeedImpl> get copyWith =>
      __$$WebFeedImplCopyWithImpl<_$WebFeedImpl>(this, _$identity);
}

abstract class _WebFeed extends WebFeed {
  const factory _WebFeed(
      {required final Uri uri,
      required final Uri favicon,
      required final Locale locale,
      required final bool isHidden}) = _$WebFeedImpl;
  const _WebFeed._() : super._();

  @override
  Uri get uri;
  @override
  Uri get favicon;
  @override
  Locale get locale;
  @override
  bool get isHidden;
  @override
  @JsonKey(ignore: true)
  _$$WebFeedImplCopyWith<_$WebFeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
