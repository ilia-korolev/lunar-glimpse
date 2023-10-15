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
    required TResult Function() triedAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
    TResult? Function()? triedAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    TResult Function()? triedAgain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaRefreshed value) refreshed,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaRefreshed value)? refreshed,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaRefreshed value)? refreshed,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
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
abstract class _$$DailyMediaFetchedImplCopyWith<$Res> {
  factory _$$DailyMediaFetchedImplCopyWith(_$DailyMediaFetchedImpl value,
          $Res Function(_$DailyMediaFetchedImpl) then) =
      __$$DailyMediaFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyMediaFetchedImplCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$DailyMediaFetchedImpl>
    implements _$$DailyMediaFetchedImplCopyWith<$Res> {
  __$$DailyMediaFetchedImplCopyWithImpl(_$DailyMediaFetchedImpl _value,
      $Res Function(_$DailyMediaFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyMediaFetchedImpl
    with DiagnosticableTreeMixin
    implements DailyMediaFetched {
  const _$DailyMediaFetchedImpl();

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
        (other.runtimeType == runtimeType && other is _$DailyMediaFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
    required TResult Function() triedAgain,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
    TResult? Function()? triedAgain,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    TResult Function()? triedAgain,
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
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaRefreshed value) refreshed,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaRefreshed value)? refreshed,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaRefreshed value)? refreshed,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class DailyMediaFetched implements DailyMediaEvent {
  const factory DailyMediaFetched() = _$DailyMediaFetchedImpl;
}

/// @nodoc
abstract class _$$DailyMediaRefreshedImplCopyWith<$Res> {
  factory _$$DailyMediaRefreshedImplCopyWith(_$DailyMediaRefreshedImpl value,
          $Res Function(_$DailyMediaRefreshedImpl) then) =
      __$$DailyMediaRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyMediaRefreshedImplCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$DailyMediaRefreshedImpl>
    implements _$$DailyMediaRefreshedImplCopyWith<$Res> {
  __$$DailyMediaRefreshedImplCopyWithImpl(_$DailyMediaRefreshedImpl _value,
      $Res Function(_$DailyMediaRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyMediaRefreshedImpl
    with DiagnosticableTreeMixin
    implements DailyMediaRefreshed {
  const _$DailyMediaRefreshedImpl();

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
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaRefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
    required TResult Function() triedAgain,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
    TResult? Function()? triedAgain,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    TResult Function()? triedAgain,
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
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaRefreshed value) refreshed,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaRefreshed value)? refreshed,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaRefreshed value)? refreshed,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class DailyMediaRefreshed implements DailyMediaEvent {
  const factory DailyMediaRefreshed() = _$DailyMediaRefreshedImpl;
}

/// @nodoc
abstract class _$$DailyMediaFavoriteToggledImplCopyWith<$Res> {
  factory _$$DailyMediaFavoriteToggledImplCopyWith(
          _$DailyMediaFavoriteToggledImpl value,
          $Res Function(_$DailyMediaFavoriteToggledImpl) then) =
      __$$DailyMediaFavoriteToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Media media});

  $MediaCopyWith<$Res> get media;
}

/// @nodoc
class __$$DailyMediaFavoriteToggledImplCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$DailyMediaFavoriteToggledImpl>
    implements _$$DailyMediaFavoriteToggledImplCopyWith<$Res> {
  __$$DailyMediaFavoriteToggledImplCopyWithImpl(
      _$DailyMediaFavoriteToggledImpl _value,
      $Res Function(_$DailyMediaFavoriteToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$DailyMediaFavoriteToggledImpl(
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

class _$DailyMediaFavoriteToggledImpl
    with DiagnosticableTreeMixin
    implements DailyMediaFavoriteToggled {
  const _$DailyMediaFavoriteToggledImpl(this.media);

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
            other is _$DailyMediaFavoriteToggledImpl &&
            (identical(other.media, media) || other.media == media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMediaFavoriteToggledImplCopyWith<_$DailyMediaFavoriteToggledImpl>
      get copyWith => __$$DailyMediaFavoriteToggledImplCopyWithImpl<
          _$DailyMediaFavoriteToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
    required TResult Function() triedAgain,
  }) {
    return favoriteToggled(media);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
    TResult? Function()? triedAgain,
  }) {
    return favoriteToggled?.call(media);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    TResult Function()? triedAgain,
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
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaRefreshed value) refreshed,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
  }) {
    return favoriteToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaRefreshed value)? refreshed,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
  }) {
    return favoriteToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaRefreshed value)? refreshed,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(this);
    }
    return orElse();
  }
}

abstract class DailyMediaFavoriteToggled implements DailyMediaEvent {
  const factory DailyMediaFavoriteToggled(final Media media) =
      _$DailyMediaFavoriteToggledImpl;

  Media get media;
  @JsonKey(ignore: true)
  _$$DailyMediaFavoriteToggledImplCopyWith<_$DailyMediaFavoriteToggledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DailyMediaTriedAgainImplCopyWith<$Res> {
  factory _$$DailyMediaTriedAgainImplCopyWith(_$DailyMediaTriedAgainImpl value,
          $Res Function(_$DailyMediaTriedAgainImpl) then) =
      __$$DailyMediaTriedAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyMediaTriedAgainImplCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$DailyMediaTriedAgainImpl>
    implements _$$DailyMediaTriedAgainImplCopyWith<$Res> {
  __$$DailyMediaTriedAgainImplCopyWithImpl(_$DailyMediaTriedAgainImpl _value,
      $Res Function(_$DailyMediaTriedAgainImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyMediaTriedAgainImpl
    with DiagnosticableTreeMixin
    implements DailyMediaTriedAgain {
  const _$DailyMediaTriedAgainImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMediaEvent.triedAgain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DailyMediaEvent.triedAgain'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaTriedAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
    required TResult Function() triedAgain,
  }) {
    return triedAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
    TResult? Function()? triedAgain,
  }) {
    return triedAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    TResult Function()? triedAgain,
    required TResult orElse(),
  }) {
    if (triedAgain != null) {
      return triedAgain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaRefreshed value) refreshed,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
  }) {
    return triedAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaRefreshed value)? refreshed,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
  }) {
    return triedAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaRefreshed value)? refreshed,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
    required TResult orElse(),
  }) {
    if (triedAgain != null) {
      return triedAgain(this);
    }
    return orElse();
  }
}

abstract class DailyMediaTriedAgain implements DailyMediaEvent {
  const factory DailyMediaTriedAgain() = _$DailyMediaTriedAgainImpl;
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
abstract class _$$DailyMediaStateImplCopyWith<$Res>
    implements $DailyMediaStateCopyWith<$Res> {
  factory _$$DailyMediaStateImplCopyWith(_$DailyMediaStateImpl value,
          $Res Function(_$DailyMediaStateImpl) then) =
      __$$DailyMediaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DailyMediaStatus status, List<Media> mediaList, bool hasReachedMax});
}

/// @nodoc
class __$$DailyMediaStateImplCopyWithImpl<$Res>
    extends _$DailyMediaStateCopyWithImpl<$Res, _$DailyMediaStateImpl>
    implements _$$DailyMediaStateImplCopyWith<$Res> {
  __$$DailyMediaStateImplCopyWithImpl(
      _$DailyMediaStateImpl _value, $Res Function(_$DailyMediaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mediaList = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$DailyMediaStateImpl(
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

class _$DailyMediaStateImpl extends _DailyMediaState {
  const _$DailyMediaStateImpl(
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
            other is _$DailyMediaStateImpl &&
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
  _$$DailyMediaStateImplCopyWith<_$DailyMediaStateImpl> get copyWith =>
      __$$DailyMediaStateImplCopyWithImpl<_$DailyMediaStateImpl>(
          this, _$identity);
}

abstract class _DailyMediaState extends DailyMediaState {
  const factory _DailyMediaState(
      {required final DailyMediaStatus status,
      final List<Media> mediaList,
      final bool hasReachedMax}) = _$DailyMediaStateImpl;
  const _DailyMediaState._() : super._();

  @override
  DailyMediaStatus get status;
  @override
  List<Media> get mediaList;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$DailyMediaStateImplCopyWith<_$DailyMediaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
