// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsSource _$NewsSourceFromJson(Map<String, dynamic> json) {
  return _NewsSource.fromJson(json);
}

/// @nodoc
mixin _$NewsSource {
  Uri get uri => throw _privateConstructorUsedError;
  Uri get iconUri => throw _privateConstructorUsedError;
  ContentLanguage get language => throw _privateConstructorUsedError;
  bool get isShown => throw _privateConstructorUsedError;

  /// Serializes this NewsSource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsSourceCopyWith<NewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSourceCopyWith<$Res> {
  factory $NewsSourceCopyWith(
          NewsSource value, $Res Function(NewsSource) then) =
      _$NewsSourceCopyWithImpl<$Res, NewsSource>;
  @useResult
  $Res call({Uri uri, Uri iconUri, ContentLanguage language, bool isShown});
}

/// @nodoc
class _$NewsSourceCopyWithImpl<$Res, $Val extends NewsSource>
    implements $NewsSourceCopyWith<$Res> {
  _$NewsSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? iconUri = null,
    Object? language = null,
    Object? isShown = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      iconUri: null == iconUri
          ? _value.iconUri
          : iconUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
      isShown: null == isShown
          ? _value.isShown
          : isShown // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsSourceImplCopyWith<$Res>
    implements $NewsSourceCopyWith<$Res> {
  factory _$$NewsSourceImplCopyWith(
          _$NewsSourceImpl value, $Res Function(_$NewsSourceImpl) then) =
      __$$NewsSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri uri, Uri iconUri, ContentLanguage language, bool isShown});
}

/// @nodoc
class __$$NewsSourceImplCopyWithImpl<$Res>
    extends _$NewsSourceCopyWithImpl<$Res, _$NewsSourceImpl>
    implements _$$NewsSourceImplCopyWith<$Res> {
  __$$NewsSourceImplCopyWithImpl(
      _$NewsSourceImpl _value, $Res Function(_$NewsSourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? iconUri = null,
    Object? language = null,
    Object? isShown = null,
  }) {
    return _then(_$NewsSourceImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      iconUri: null == iconUri
          ? _value.iconUri
          : iconUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
      isShown: null == isShown
          ? _value.isShown
          : isShown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsSourceImpl extends _NewsSource {
  const _$NewsSourceImpl(
      {required this.uri,
      required this.iconUri,
      required this.language,
      required this.isShown})
      : super._();

  factory _$NewsSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsSourceImplFromJson(json);

  @override
  final Uri uri;
  @override
  final Uri iconUri;
  @override
  final ContentLanguage language;
  @override
  final bool isShown;

  @override
  String toString() {
    return 'NewsSource(uri: $uri, iconUri: $iconUri, language: $language, isShown: $isShown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSourceImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.iconUri, iconUri) || other.iconUri == iconUri) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.isShown, isShown) || other.isShown == isShown));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, iconUri, language, isShown);

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsSourceImplCopyWith<_$NewsSourceImpl> get copyWith =>
      __$$NewsSourceImplCopyWithImpl<_$NewsSourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsSourceImplToJson(
      this,
    );
  }
}

abstract class _NewsSource extends NewsSource {
  const factory _NewsSource(
      {required final Uri uri,
      required final Uri iconUri,
      required final ContentLanguage language,
      required final bool isShown}) = _$NewsSourceImpl;
  const _NewsSource._() : super._();

  factory _NewsSource.fromJson(Map<String, dynamic> json) =
      _$NewsSourceImpl.fromJson;

  @override
  Uri get uri;
  @override
  Uri get iconUri;
  @override
  ContentLanguage get language;
  @override
  bool get isShown;

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsSourceImplCopyWith<_$NewsSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
