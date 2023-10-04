// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_media_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailyMediaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMediaEventCopyWith<$Res> {
  factory $DailyMediaEventCopyWith(
          DailyMediaEvent value, $Res Function(DailyMediaEvent) then) =
      _$DailyMediaEventCopyWithImpl<$Res, DailyMediaEvent>;
}

/// @nodoc
class _$DailyMediaEventCopyWithImpl<$Res, $Val extends DailyMediaEvent>
    implements $DailyMediaEventCopyWith<$Res> {
  _$DailyMediaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchedCopyWith<$Res> {
  factory _$$_FetchedCopyWith(
          _$_Fetched value, $Res Function(_$_Fetched) then) =
      __$$_FetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchedCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$_Fetched>
    implements _$$_FetchedCopyWith<$Res> {
  __$$_FetchedCopyWithImpl(_$_Fetched _value, $Res Function(_$_Fetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Fetched with DiagnosticableTreeMixin implements _Fetched {
  const _$_Fetched();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMediaEvent.fetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DailyMediaEvent.fetched'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements DailyMediaEvent {
  const factory _Fetched() = _$_Fetched;
}

/// @nodoc
abstract class _$$_RefreshedCopyWith<$Res> {
  factory _$$_RefreshedCopyWith(
          _$_Refreshed value, $Res Function(_$_Refreshed) then) =
      __$$_RefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshedCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$_Refreshed>
    implements _$$_RefreshedCopyWith<$Res> {
  __$$_RefreshedCopyWithImpl(
      _$_Refreshed _value, $Res Function(_$_Refreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refreshed with DiagnosticableTreeMixin implements _Refreshed {
  const _$_Refreshed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMediaEvent.refreshed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DailyMediaEvent.refreshed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _Refreshed implements DailyMediaEvent {
  const factory _Refreshed() = _$_Refreshed;
}

/// @nodoc
abstract class _$$_FavoriteToggledCopyWith<$Res> {
  factory _$$_FavoriteToggledCopyWith(
          _$_FavoriteToggled value, $Res Function(_$_FavoriteToggled) then) =
      __$$_FavoriteToggledCopyWithImpl<$Res>;
  @useResult
  $Res call({Media media});

  $MediaCopyWith<$Res> get media;
}

/// @nodoc
class __$$_FavoriteToggledCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$_FavoriteToggled>
    implements _$$_FavoriteToggledCopyWith<$Res> {
  __$$_FavoriteToggledCopyWithImpl(
      _$_FavoriteToggled _value, $Res Function(_$_FavoriteToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$_FavoriteToggled(
      null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res> get media {
    return $MediaCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value));
    });
  }
}

/// @nodoc

class _$_FavoriteToggled
    with DiagnosticableTreeMixin
    implements _FavoriteToggled {
  const _$_FavoriteToggled(this.media);

  @override
  final Media media;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMediaEvent.favoriteToggled(media: $media)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyMediaEvent.favoriteToggled'))
      ..add(DiagnosticsProperty('media', media));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteToggled &&
            (identical(other.media, media) || other.media == media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteToggledCopyWith<_$_FavoriteToggled> get copyWith =>
      __$$_FavoriteToggledCopyWithImpl<_$_FavoriteToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
  }) {
    return favoriteToggled(media);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
  }) {
    return favoriteToggled?.call(media);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(media);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return favoriteToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return favoriteToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(this);
    }
    return orElse();
  }
}

abstract class _FavoriteToggled implements DailyMediaEvent {
  const factory _FavoriteToggled(final Media media) = _$_FavoriteToggled;

  Media get media;
  @JsonKey(ignore: true)
  _$$_FavoriteToggledCopyWith<_$_FavoriteToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DailyMediaState {
  DailyMediaStatus get status => throw _privateConstructorUsedError;
  List<Media> get mediaList => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyMediaStateCopyWith<DailyMediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMediaStateCopyWith<$Res> {
  factory $DailyMediaStateCopyWith(
          DailyMediaState value, $Res Function(DailyMediaState) then) =
      _$DailyMediaStateCopyWithImpl<$Res, DailyMediaState>;
  @useResult
  $Res call(
      {DailyMediaStatus status, List<Media> mediaList, bool hasReachedMax});
}

/// @nodoc
class _$DailyMediaStateCopyWithImpl<$Res, $Val extends DailyMediaState>
    implements $DailyMediaStateCopyWith<$Res> {
  _$DailyMediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mediaList = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DailyMediaStatus,
      mediaList: null == mediaList
          ? _value.mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DailyMediaStateCopyWith<$Res>
    implements $DailyMediaStateCopyWith<$Res> {
  factory _$$_DailyMediaStateCopyWith(
          _$_DailyMediaState value, $Res Function(_$_DailyMediaState) then) =
      __$$_DailyMediaStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DailyMediaStatus status, List<Media> mediaList, bool hasReachedMax});
}

/// @nodoc
class __$$_DailyMediaStateCopyWithImpl<$Res>
    extends _$DailyMediaStateCopyWithImpl<$Res, _$_DailyMediaState>
    implements _$$_DailyMediaStateCopyWith<$Res> {
  __$$_DailyMediaStateCopyWithImpl(
      _$_DailyMediaState _value, $Res Function(_$_DailyMediaState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mediaList = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_DailyMediaState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DailyMediaStatus,
      mediaList: null == mediaList
          ? _value._mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DailyMediaState extends _DailyMediaState {
  const _$_DailyMediaState(
      {required this.status,
      final List<Media> mediaList = const [],
      this.hasReachedMax = false})
      : _mediaList = mediaList,
        super._();

  @override
  final DailyMediaStatus status;
  final List<Media> _mediaList;
  @override
  @JsonKey()
  List<Media> get mediaList {
    if (_mediaList is EqualUnmodifiableListView) return _mediaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaList);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyMediaState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._mediaList, _mediaList) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_mediaList), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyMediaStateCopyWith<_$_DailyMediaState> get copyWith =>
      __$$_DailyMediaStateCopyWithImpl<_$_DailyMediaState>(this, _$identity);
}

abstract class _DailyMediaState extends DailyMediaState {
  const factory _DailyMediaState(
      {required final DailyMediaStatus status,
      final List<Media> mediaList,
      final bool hasReachedMax}) = _$_DailyMediaState;
  const _DailyMediaState._() : super._();

  @override
  DailyMediaStatus get status;
  @override
  List<Media> get mediaList;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_DailyMediaStateCopyWith<_$_DailyMediaState> get copyWith =>
      throw _privateConstructorUsedError;
}
