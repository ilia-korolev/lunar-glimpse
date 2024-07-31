// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_gallery_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasicGalleryItem _$BasicGalleryItemFromJson(Map<String, dynamic> json) {
  return _BasicGalleryItem.fromJson(json);
}

/// @nodoc
mixin _$BasicGalleryItem {
  Date get date => throw _privateConstructorUsedError;
  Uri get uri => throw _privateConstructorUsedError;
  Uri get hdUri => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  GalleryItemType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;

  /// Serializes this BasicGalleryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasicGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasicGalleryItemCopyWith<BasicGalleryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicGalleryItemCopyWith<$Res> {
  factory $BasicGalleryItemCopyWith(
          BasicGalleryItem value, $Res Function(BasicGalleryItem) then) =
      _$BasicGalleryItemCopyWithImpl<$Res, BasicGalleryItem>;
  @useResult
  $Res call(
      {Date date,
      Uri uri,
      Uri hdUri,
      String? copyright,
      GalleryItemType type,
      String title,
      String explanation});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class _$BasicGalleryItemCopyWithImpl<$Res, $Val extends BasicGalleryItem>
    implements $BasicGalleryItemCopyWith<$Res> {
  _$BasicGalleryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasicGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? uri = null,
    Object? hdUri = null,
    Object? copyright = freezed,
    Object? type = null,
    Object? title = null,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      hdUri: null == hdUri
          ? _value.hdUri
          : hdUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GalleryItemType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of BasicGalleryItem
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
abstract class _$$BasicGalleryItemImplCopyWith<$Res>
    implements $BasicGalleryItemCopyWith<$Res> {
  factory _$$BasicGalleryItemImplCopyWith(_$BasicGalleryItemImpl value,
          $Res Function(_$BasicGalleryItemImpl) then) =
      __$$BasicGalleryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date date,
      Uri uri,
      Uri hdUri,
      String? copyright,
      GalleryItemType type,
      String title,
      String explanation});

  @override
  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$$BasicGalleryItemImplCopyWithImpl<$Res>
    extends _$BasicGalleryItemCopyWithImpl<$Res, _$BasicGalleryItemImpl>
    implements _$$BasicGalleryItemImplCopyWith<$Res> {
  __$$BasicGalleryItemImplCopyWithImpl(_$BasicGalleryItemImpl _value,
      $Res Function(_$BasicGalleryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasicGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? uri = null,
    Object? hdUri = null,
    Object? copyright = freezed,
    Object? type = null,
    Object? title = null,
    Object? explanation = null,
  }) {
    return _then(_$BasicGalleryItemImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      hdUri: null == hdUri
          ? _value.hdUri
          : hdUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GalleryItemType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicGalleryItemImpl implements _BasicGalleryItem {
  const _$BasicGalleryItemImpl(
      {required this.date,
      required this.uri,
      required this.hdUri,
      required this.copyright,
      required this.type,
      required this.title,
      required this.explanation});

  factory _$BasicGalleryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicGalleryItemImplFromJson(json);

  @override
  final Date date;
  @override
  final Uri uri;
  @override
  final Uri hdUri;
  @override
  final String? copyright;
  @override
  final GalleryItemType type;
  @override
  final String title;
  @override
  final String explanation;

  @override
  String toString() {
    return 'BasicGalleryItem(date: $date, uri: $uri, hdUri: $hdUri, copyright: $copyright, type: $type, title: $title, explanation: $explanation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicGalleryItemImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.hdUri, hdUri) || other.hdUri == hdUri) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, uri, hdUri, copyright, type, title, explanation);

  /// Create a copy of BasicGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicGalleryItemImplCopyWith<_$BasicGalleryItemImpl> get copyWith =>
      __$$BasicGalleryItemImplCopyWithImpl<_$BasicGalleryItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicGalleryItemImplToJson(
      this,
    );
  }
}

abstract class _BasicGalleryItem implements BasicGalleryItem {
  const factory _BasicGalleryItem(
      {required final Date date,
      required final Uri uri,
      required final Uri hdUri,
      required final String? copyright,
      required final GalleryItemType type,
      required final String title,
      required final String explanation}) = _$BasicGalleryItemImpl;

  factory _BasicGalleryItem.fromJson(Map<String, dynamic> json) =
      _$BasicGalleryItemImpl.fromJson;

  @override
  Date get date;
  @override
  Uri get uri;
  @override
  Uri get hdUri;
  @override
  String? get copyright;
  @override
  GalleryItemType get type;
  @override
  String get title;
  @override
  String get explanation;

  /// Create a copy of BasicGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasicGalleryItemImplCopyWith<_$BasicGalleryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
