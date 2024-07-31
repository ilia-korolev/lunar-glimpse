// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GalleryItem _$GalleryItemFromJson(Map<String, dynamic> json) {
  return _GalleryItem.fromJson(json);
}

/// @nodoc
mixin _$GalleryItem {
  Date get date => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  GalleryMedia get media => throw _privateConstructorUsedError;
  GalleryInfo get info => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this GalleryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GalleryItemCopyWith<GalleryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryItemCopyWith<$Res> {
  factory $GalleryItemCopyWith(
          GalleryItem value, $Res Function(GalleryItem) then) =
      _$GalleryItemCopyWithImpl<$Res, GalleryItem>;
  @useResult
  $Res call(
      {Date date,
      String? copyright,
      GalleryMedia media,
      GalleryInfo info,
      bool isFavorite});

  $DateCopyWith<$Res> get date;
  $GalleryMediaCopyWith<$Res> get media;
  $GalleryInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$GalleryItemCopyWithImpl<$Res, $Val extends GalleryItem>
    implements $GalleryItemCopyWith<$Res> {
  _$GalleryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? copyright = freezed,
    Object? media = null,
    Object? info = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as GalleryMedia,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as GalleryInfo,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of GalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  /// Create a copy of GalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GalleryMediaCopyWith<$Res> get media {
    return $GalleryMediaCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }

  /// Create a copy of GalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GalleryInfoCopyWith<$Res> get info {
    return $GalleryInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GalleryItemImplCopyWith<$Res>
    implements $GalleryItemCopyWith<$Res> {
  factory _$$GalleryItemImplCopyWith(
          _$GalleryItemImpl value, $Res Function(_$GalleryItemImpl) then) =
      __$$GalleryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Date date,
      String? copyright,
      GalleryMedia media,
      GalleryInfo info,
      bool isFavorite});

  @override
  $DateCopyWith<$Res> get date;
  @override
  $GalleryMediaCopyWith<$Res> get media;
  @override
  $GalleryInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$GalleryItemImplCopyWithImpl<$Res>
    extends _$GalleryItemCopyWithImpl<$Res, _$GalleryItemImpl>
    implements _$$GalleryItemImplCopyWith<$Res> {
  __$$GalleryItemImplCopyWithImpl(
      _$GalleryItemImpl _value, $Res Function(_$GalleryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? copyright = freezed,
    Object? media = null,
    Object? info = null,
    Object? isFavorite = null,
  }) {
    return _then(_$GalleryItemImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as GalleryMedia,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as GalleryInfo,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryItemImpl extends _GalleryItem {
  const _$GalleryItemImpl(
      {required this.date,
      required this.copyright,
      required this.media,
      required this.info,
      required this.isFavorite})
      : super._();

  factory _$GalleryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryItemImplFromJson(json);

  @override
  final Date date;
  @override
  final String? copyright;
  @override
  final GalleryMedia media;
  @override
  final GalleryInfo info;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'GalleryItem(date: $date, copyright: $copyright, media: $media, info: $info, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryItemImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, copyright, media, info, isFavorite);

  /// Create a copy of GalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryItemImplCopyWith<_$GalleryItemImpl> get copyWith =>
      __$$GalleryItemImplCopyWithImpl<_$GalleryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryItemImplToJson(
      this,
    );
  }
}

abstract class _GalleryItem extends GalleryItem {
  const factory _GalleryItem(
      {required final Date date,
      required final String? copyright,
      required final GalleryMedia media,
      required final GalleryInfo info,
      required final bool isFavorite}) = _$GalleryItemImpl;
  const _GalleryItem._() : super._();

  factory _GalleryItem.fromJson(Map<String, dynamic> json) =
      _$GalleryItemImpl.fromJson;

  @override
  Date get date;
  @override
  String? get copyright;
  @override
  GalleryMedia get media;
  @override
  GalleryInfo get info;
  @override
  bool get isFavorite;

  /// Create a copy of GalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryItemImplCopyWith<_$GalleryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GalleryMedia _$GalleryMediaFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'image':
      return GalleryImage.fromJson(json);
    case 'video':
      return GalleryVideo.fromJson(json);
    case 'other':
      return GalleryOther.fromJson(json);
    case 'empty':
      return GalleryEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'GalleryMedia',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$GalleryMedia {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri uri,
            Uri hdUri,
            Uri thumbUri,
            double aspectRatio,
            double aspectRatioThumb,
            String blurHash,
            String blurHashThumb)
        image,
    required TResult Function(Uri uri) video,
    required TResult Function(Uri uri) other,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult? Function(Uri uri)? video,
    TResult? Function(Uri uri)? other,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult Function(Uri uri)? video,
    TResult Function(Uri uri)? other,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryImage value) image,
    required TResult Function(GalleryVideo value) video,
    required TResult Function(GalleryOther value) other,
    required TResult Function(GalleryEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryImage value)? image,
    TResult? Function(GalleryVideo value)? video,
    TResult? Function(GalleryOther value)? other,
    TResult? Function(GalleryEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryImage value)? image,
    TResult Function(GalleryVideo value)? video,
    TResult Function(GalleryOther value)? other,
    TResult Function(GalleryEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this GalleryMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryMediaCopyWith<$Res> {
  factory $GalleryMediaCopyWith(
          GalleryMedia value, $Res Function(GalleryMedia) then) =
      _$GalleryMediaCopyWithImpl<$Res, GalleryMedia>;
}

/// @nodoc
class _$GalleryMediaCopyWithImpl<$Res, $Val extends GalleryMedia>
    implements $GalleryMediaCopyWith<$Res> {
  _$GalleryMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GalleryImageImplCopyWith<$Res> {
  factory _$$GalleryImageImplCopyWith(
          _$GalleryImageImpl value, $Res Function(_$GalleryImageImpl) then) =
      __$$GalleryImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Uri uri,
      Uri hdUri,
      Uri thumbUri,
      double aspectRatio,
      double aspectRatioThumb,
      String blurHash,
      String blurHashThumb});
}

/// @nodoc
class __$$GalleryImageImplCopyWithImpl<$Res>
    extends _$GalleryMediaCopyWithImpl<$Res, _$GalleryImageImpl>
    implements _$$GalleryImageImplCopyWith<$Res> {
  __$$GalleryImageImplCopyWithImpl(
      _$GalleryImageImpl _value, $Res Function(_$GalleryImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? hdUri = null,
    Object? thumbUri = null,
    Object? aspectRatio = null,
    Object? aspectRatioThumb = null,
    Object? blurHash = null,
    Object? blurHashThumb = null,
  }) {
    return _then(_$GalleryImageImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      hdUri: null == hdUri
          ? _value.hdUri
          : hdUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      thumbUri: null == thumbUri
          ? _value.thumbUri
          : thumbUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      aspectRatioThumb: null == aspectRatioThumb
          ? _value.aspectRatioThumb
          : aspectRatioThumb // ignore: cast_nullable_to_non_nullable
              as double,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
      blurHashThumb: null == blurHashThumb
          ? _value.blurHashThumb
          : blurHashThumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryImageImpl implements GalleryImage {
  const _$GalleryImageImpl(
      {required this.uri,
      required this.hdUri,
      required this.thumbUri,
      required this.aspectRatio,
      required this.aspectRatioThumb,
      required this.blurHash,
      required this.blurHashThumb,
      final String? $type})
      : $type = $type ?? 'image';

  factory _$GalleryImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryImageImplFromJson(json);

  @override
  final Uri uri;
  @override
  final Uri hdUri;
  @override
  final Uri thumbUri;
  @override
  final double aspectRatio;
  @override
  final double aspectRatioThumb;
  @override
  final String blurHash;
  @override
  final String blurHashThumb;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GalleryMedia.image(uri: $uri, hdUri: $hdUri, thumbUri: $thumbUri, aspectRatio: $aspectRatio, aspectRatioThumb: $aspectRatioThumb, blurHash: $blurHash, blurHashThumb: $blurHashThumb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryImageImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.hdUri, hdUri) || other.hdUri == hdUri) &&
            (identical(other.thumbUri, thumbUri) ||
                other.thumbUri == thumbUri) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.aspectRatioThumb, aspectRatioThumb) ||
                other.aspectRatioThumb == aspectRatioThumb) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash) &&
            (identical(other.blurHashThumb, blurHashThumb) ||
                other.blurHashThumb == blurHashThumb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, hdUri, thumbUri,
      aspectRatio, aspectRatioThumb, blurHash, blurHashThumb);

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryImageImplCopyWith<_$GalleryImageImpl> get copyWith =>
      __$$GalleryImageImplCopyWithImpl<_$GalleryImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri uri,
            Uri hdUri,
            Uri thumbUri,
            double aspectRatio,
            double aspectRatioThumb,
            String blurHash,
            String blurHashThumb)
        image,
    required TResult Function(Uri uri) video,
    required TResult Function(Uri uri) other,
    required TResult Function() empty,
  }) {
    return image(uri, hdUri, thumbUri, aspectRatio, aspectRatioThumb, blurHash,
        blurHashThumb);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult? Function(Uri uri)? video,
    TResult? Function(Uri uri)? other,
    TResult? Function()? empty,
  }) {
    return image?.call(uri, hdUri, thumbUri, aspectRatio, aspectRatioThumb,
        blurHash, blurHashThumb);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult Function(Uri uri)? video,
    TResult Function(Uri uri)? other,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(uri, hdUri, thumbUri, aspectRatio, aspectRatioThumb,
          blurHash, blurHashThumb);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryImage value) image,
    required TResult Function(GalleryVideo value) video,
    required TResult Function(GalleryOther value) other,
    required TResult Function(GalleryEmpty value) empty,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryImage value)? image,
    TResult? Function(GalleryVideo value)? video,
    TResult? Function(GalleryOther value)? other,
    TResult? Function(GalleryEmpty value)? empty,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryImage value)? image,
    TResult Function(GalleryVideo value)? video,
    TResult Function(GalleryOther value)? other,
    TResult Function(GalleryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryImageImplToJson(
      this,
    );
  }
}

abstract class GalleryImage implements GalleryMedia {
  const factory GalleryImage(
      {required final Uri uri,
      required final Uri hdUri,
      required final Uri thumbUri,
      required final double aspectRatio,
      required final double aspectRatioThumb,
      required final String blurHash,
      required final String blurHashThumb}) = _$GalleryImageImpl;

  factory GalleryImage.fromJson(Map<String, dynamic> json) =
      _$GalleryImageImpl.fromJson;

  Uri get uri;
  Uri get hdUri;
  Uri get thumbUri;
  double get aspectRatio;
  double get aspectRatioThumb;
  String get blurHash;
  String get blurHashThumb;

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryImageImplCopyWith<_$GalleryImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryVideoImplCopyWith<$Res> {
  factory _$$GalleryVideoImplCopyWith(
          _$GalleryVideoImpl value, $Res Function(_$GalleryVideoImpl) then) =
      __$$GalleryVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri uri});
}

/// @nodoc
class __$$GalleryVideoImplCopyWithImpl<$Res>
    extends _$GalleryMediaCopyWithImpl<$Res, _$GalleryVideoImpl>
    implements _$$GalleryVideoImplCopyWith<$Res> {
  __$$GalleryVideoImplCopyWithImpl(
      _$GalleryVideoImpl _value, $Res Function(_$GalleryVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$GalleryVideoImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryVideoImpl implements GalleryVideo {
  const _$GalleryVideoImpl({required this.uri, final String? $type})
      : $type = $type ?? 'video';

  factory _$GalleryVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryVideoImplFromJson(json);

  @override
  final Uri uri;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GalleryMedia.video(uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryVideoImpl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri);

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryVideoImplCopyWith<_$GalleryVideoImpl> get copyWith =>
      __$$GalleryVideoImplCopyWithImpl<_$GalleryVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri uri,
            Uri hdUri,
            Uri thumbUri,
            double aspectRatio,
            double aspectRatioThumb,
            String blurHash,
            String blurHashThumb)
        image,
    required TResult Function(Uri uri) video,
    required TResult Function(Uri uri) other,
    required TResult Function() empty,
  }) {
    return video(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult? Function(Uri uri)? video,
    TResult? Function(Uri uri)? other,
    TResult? Function()? empty,
  }) {
    return video?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult Function(Uri uri)? video,
    TResult Function(Uri uri)? other,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryImage value) image,
    required TResult Function(GalleryVideo value) video,
    required TResult Function(GalleryOther value) other,
    required TResult Function(GalleryEmpty value) empty,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryImage value)? image,
    TResult? Function(GalleryVideo value)? video,
    TResult? Function(GalleryOther value)? other,
    TResult? Function(GalleryEmpty value)? empty,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryImage value)? image,
    TResult Function(GalleryVideo value)? video,
    TResult Function(GalleryOther value)? other,
    TResult Function(GalleryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryVideoImplToJson(
      this,
    );
  }
}

abstract class GalleryVideo implements GalleryMedia {
  const factory GalleryVideo({required final Uri uri}) = _$GalleryVideoImpl;

  factory GalleryVideo.fromJson(Map<String, dynamic> json) =
      _$GalleryVideoImpl.fromJson;

  Uri get uri;

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryVideoImplCopyWith<_$GalleryVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryOtherImplCopyWith<$Res> {
  factory _$$GalleryOtherImplCopyWith(
          _$GalleryOtherImpl value, $Res Function(_$GalleryOtherImpl) then) =
      __$$GalleryOtherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri uri});
}

/// @nodoc
class __$$GalleryOtherImplCopyWithImpl<$Res>
    extends _$GalleryMediaCopyWithImpl<$Res, _$GalleryOtherImpl>
    implements _$$GalleryOtherImplCopyWith<$Res> {
  __$$GalleryOtherImplCopyWithImpl(
      _$GalleryOtherImpl _value, $Res Function(_$GalleryOtherImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$GalleryOtherImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryOtherImpl implements GalleryOther {
  const _$GalleryOtherImpl({required this.uri, final String? $type})
      : $type = $type ?? 'other';

  factory _$GalleryOtherImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryOtherImplFromJson(json);

  @override
  final Uri uri;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GalleryMedia.other(uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryOtherImpl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri);

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryOtherImplCopyWith<_$GalleryOtherImpl> get copyWith =>
      __$$GalleryOtherImplCopyWithImpl<_$GalleryOtherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri uri,
            Uri hdUri,
            Uri thumbUri,
            double aspectRatio,
            double aspectRatioThumb,
            String blurHash,
            String blurHashThumb)
        image,
    required TResult Function(Uri uri) video,
    required TResult Function(Uri uri) other,
    required TResult Function() empty,
  }) {
    return other(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult? Function(Uri uri)? video,
    TResult? Function(Uri uri)? other,
    TResult? Function()? empty,
  }) {
    return other?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult Function(Uri uri)? video,
    TResult Function(Uri uri)? other,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryImage value) image,
    required TResult Function(GalleryVideo value) video,
    required TResult Function(GalleryOther value) other,
    required TResult Function(GalleryEmpty value) empty,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryImage value)? image,
    TResult? Function(GalleryVideo value)? video,
    TResult? Function(GalleryOther value)? other,
    TResult? Function(GalleryEmpty value)? empty,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryImage value)? image,
    TResult Function(GalleryVideo value)? video,
    TResult Function(GalleryOther value)? other,
    TResult Function(GalleryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryOtherImplToJson(
      this,
    );
  }
}

abstract class GalleryOther implements GalleryMedia {
  const factory GalleryOther({required final Uri uri}) = _$GalleryOtherImpl;

  factory GalleryOther.fromJson(Map<String, dynamic> json) =
      _$GalleryOtherImpl.fromJson;

  Uri get uri;

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryOtherImplCopyWith<_$GalleryOtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryEmptyImplCopyWith<$Res> {
  factory _$$GalleryEmptyImplCopyWith(
          _$GalleryEmptyImpl value, $Res Function(_$GalleryEmptyImpl) then) =
      __$$GalleryEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryEmptyImplCopyWithImpl<$Res>
    extends _$GalleryMediaCopyWithImpl<$Res, _$GalleryEmptyImpl>
    implements _$$GalleryEmptyImplCopyWith<$Res> {
  __$$GalleryEmptyImplCopyWithImpl(
      _$GalleryEmptyImpl _value, $Res Function(_$GalleryEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryMedia
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GalleryEmptyImpl implements GalleryEmpty {
  const _$GalleryEmptyImpl({final String? $type}) : $type = $type ?? 'empty';

  factory _$GalleryEmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryEmptyImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GalleryMedia.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GalleryEmptyImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri uri,
            Uri hdUri,
            Uri thumbUri,
            double aspectRatio,
            double aspectRatioThumb,
            String blurHash,
            String blurHashThumb)
        image,
    required TResult Function(Uri uri) video,
    required TResult Function(Uri uri) other,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult? Function(Uri uri)? video,
    TResult? Function(Uri uri)? other,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri uri, Uri hdUri, Uri thumbUri, double aspectRatio,
            double aspectRatioThumb, String blurHash, String blurHashThumb)?
        image,
    TResult Function(Uri uri)? video,
    TResult Function(Uri uri)? other,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryImage value) image,
    required TResult Function(GalleryVideo value) video,
    required TResult Function(GalleryOther value) other,
    required TResult Function(GalleryEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryImage value)? image,
    TResult? Function(GalleryVideo value)? video,
    TResult? Function(GalleryOther value)? other,
    TResult? Function(GalleryEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryImage value)? image,
    TResult Function(GalleryVideo value)? video,
    TResult Function(GalleryOther value)? other,
    TResult Function(GalleryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryEmptyImplToJson(
      this,
    );
  }
}

abstract class GalleryEmpty implements GalleryMedia {
  const factory GalleryEmpty() = _$GalleryEmptyImpl;

  factory GalleryEmpty.fromJson(Map<String, dynamic> json) =
      _$GalleryEmptyImpl.fromJson;
}

GalleryInfo _$GalleryInfoFromJson(Map<String, dynamic> json) {
  return _GalleryInfo.fromJson(json);
}

/// @nodoc
mixin _$GalleryInfo {
  ContentLanguage get language => throw _privateConstructorUsedError;
  ContentLanguage get originalLanguage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;

  /// Serializes this GalleryInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GalleryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GalleryInfoCopyWith<GalleryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryInfoCopyWith<$Res> {
  factory $GalleryInfoCopyWith(
          GalleryInfo value, $Res Function(GalleryInfo) then) =
      _$GalleryInfoCopyWithImpl<$Res, GalleryInfo>;
  @useResult
  $Res call(
      {ContentLanguage language,
      ContentLanguage originalLanguage,
      String title,
      String explanation});
}

/// @nodoc
class _$GalleryInfoCopyWithImpl<$Res, $Val extends GalleryInfo>
    implements $GalleryInfoCopyWith<$Res> {
  _$GalleryInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? originalLanguage = null,
    Object? title = null,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
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
}

/// @nodoc
abstract class _$$GalleryInfoImplCopyWith<$Res>
    implements $GalleryInfoCopyWith<$Res> {
  factory _$$GalleryInfoImplCopyWith(
          _$GalleryInfoImpl value, $Res Function(_$GalleryInfoImpl) then) =
      __$$GalleryInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ContentLanguage language,
      ContentLanguage originalLanguage,
      String title,
      String explanation});
}

/// @nodoc
class __$$GalleryInfoImplCopyWithImpl<$Res>
    extends _$GalleryInfoCopyWithImpl<$Res, _$GalleryInfoImpl>
    implements _$$GalleryInfoImplCopyWith<$Res> {
  __$$GalleryInfoImplCopyWithImpl(
      _$GalleryInfoImpl _value, $Res Function(_$GalleryInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? originalLanguage = null,
    Object? title = null,
    Object? explanation = null,
  }) {
    return _then(_$GalleryInfoImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
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
class _$GalleryInfoImpl implements _GalleryInfo {
  const _$GalleryInfoImpl(
      {required this.language,
      required this.originalLanguage,
      required this.title,
      required this.explanation});

  factory _$GalleryInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryInfoImplFromJson(json);

  @override
  final ContentLanguage language;
  @override
  final ContentLanguage originalLanguage;
  @override
  final String title;
  @override
  final String explanation;

  @override
  String toString() {
    return 'GalleryInfo(language: $language, originalLanguage: $originalLanguage, title: $title, explanation: $explanation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryInfoImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, language, originalLanguage, title, explanation);

  /// Create a copy of GalleryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryInfoImplCopyWith<_$GalleryInfoImpl> get copyWith =>
      __$$GalleryInfoImplCopyWithImpl<_$GalleryInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryInfoImplToJson(
      this,
    );
  }
}

abstract class _GalleryInfo implements GalleryInfo {
  const factory _GalleryInfo(
      {required final ContentLanguage language,
      required final ContentLanguage originalLanguage,
      required final String title,
      required final String explanation}) = _$GalleryInfoImpl;

  factory _GalleryInfo.fromJson(Map<String, dynamic> json) =
      _$GalleryInfoImpl.fromJson;

  @override
  ContentLanguage get language;
  @override
  ContentLanguage get originalLanguage;
  @override
  String get title;
  @override
  String get explanation;

  /// Create a copy of GalleryInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryInfoImplCopyWith<_$GalleryInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
