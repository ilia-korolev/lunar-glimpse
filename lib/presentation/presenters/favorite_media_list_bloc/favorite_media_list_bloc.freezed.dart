// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_media_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteMediaListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Media media) favoriteRemoved,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(Media media)? favoriteRemoved,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Media media)? favoriteRemoved,
    TResult Function()? triedAgain,
    TResult Function(List<Media> media)? mediaChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteMediaListFetched value) fetched,
    required TResult Function(FavoriteMediaListFavoriteRemoved value)
        favoriteRemoved,
    required TResult Function(FavoriteMediaListTriedAgain value) triedAgain,
    required TResult Function(FavoriteMediaListMediaChanged value) mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteMediaListFetched value)? fetched,
    TResult? Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult? Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult? Function(FavoriteMediaListMediaChanged value)? mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteMediaListFetched value)? fetched,
    TResult Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult Function(FavoriteMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteMediaListEventCopyWith<$Res> {
  factory $FavoriteMediaListEventCopyWith(FavoriteMediaListEvent value,
          $Res Function(FavoriteMediaListEvent) then) =
      _$FavoriteMediaListEventCopyWithImpl<$Res, FavoriteMediaListEvent>;
}

/// @nodoc
class _$FavoriteMediaListEventCopyWithImpl<$Res,
        $Val extends FavoriteMediaListEvent>
    implements $FavoriteMediaListEventCopyWith<$Res> {
  _$FavoriteMediaListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoriteMediaListFetchedImplCopyWith<$Res> {
  factory _$$FavoriteMediaListFetchedImplCopyWith(
          _$FavoriteMediaListFetchedImpl value,
          $Res Function(_$FavoriteMediaListFetchedImpl) then) =
      __$$FavoriteMediaListFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteMediaListFetchedImplCopyWithImpl<$Res>
    extends _$FavoriteMediaListEventCopyWithImpl<$Res,
        _$FavoriteMediaListFetchedImpl>
    implements _$$FavoriteMediaListFetchedImplCopyWith<$Res> {
  __$$FavoriteMediaListFetchedImplCopyWithImpl(
      _$FavoriteMediaListFetchedImpl _value,
      $Res Function(_$FavoriteMediaListFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteMediaListFetchedImpl
    with DiagnosticableTreeMixin
    implements FavoriteMediaListFetched {
  const _$FavoriteMediaListFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteMediaListEvent.fetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FavoriteMediaListEvent.fetched'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteMediaListFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Media media) favoriteRemoved,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(Media media)? favoriteRemoved,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Media media)? favoriteRemoved,
    TResult Function()? triedAgain,
    TResult Function(List<Media> media)? mediaChanged,
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
    required TResult Function(FavoriteMediaListFetched value) fetched,
    required TResult Function(FavoriteMediaListFavoriteRemoved value)
        favoriteRemoved,
    required TResult Function(FavoriteMediaListTriedAgain value) triedAgain,
    required TResult Function(FavoriteMediaListMediaChanged value) mediaChanged,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteMediaListFetched value)? fetched,
    TResult? Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult? Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult? Function(FavoriteMediaListMediaChanged value)? mediaChanged,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteMediaListFetched value)? fetched,
    TResult Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult Function(FavoriteMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class FavoriteMediaListFetched implements FavoriteMediaListEvent {
  const factory FavoriteMediaListFetched() = _$FavoriteMediaListFetchedImpl;
}

/// @nodoc
abstract class _$$FavoriteMediaListFavoriteRemovedImplCopyWith<$Res> {
  factory _$$FavoriteMediaListFavoriteRemovedImplCopyWith(
          _$FavoriteMediaListFavoriteRemovedImpl value,
          $Res Function(_$FavoriteMediaListFavoriteRemovedImpl) then) =
      __$$FavoriteMediaListFavoriteRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Media media});

  $MediaCopyWith<$Res> get media;
}

/// @nodoc
class __$$FavoriteMediaListFavoriteRemovedImplCopyWithImpl<$Res>
    extends _$FavoriteMediaListEventCopyWithImpl<$Res,
        _$FavoriteMediaListFavoriteRemovedImpl>
    implements _$$FavoriteMediaListFavoriteRemovedImplCopyWith<$Res> {
  __$$FavoriteMediaListFavoriteRemovedImplCopyWithImpl(
      _$FavoriteMediaListFavoriteRemovedImpl _value,
      $Res Function(_$FavoriteMediaListFavoriteRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$FavoriteMediaListFavoriteRemovedImpl(
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

class _$FavoriteMediaListFavoriteRemovedImpl
    with DiagnosticableTreeMixin
    implements FavoriteMediaListFavoriteRemoved {
  const _$FavoriteMediaListFavoriteRemovedImpl(this.media);

  @override
  final Media media;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteMediaListEvent.favoriteRemoved(media: $media)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'FavoriteMediaListEvent.favoriteRemoved'))
      ..add(DiagnosticsProperty('media', media));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteMediaListFavoriteRemovedImpl &&
            (identical(other.media, media) || other.media == media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteMediaListFavoriteRemovedImplCopyWith<
          _$FavoriteMediaListFavoriteRemovedImpl>
      get copyWith => __$$FavoriteMediaListFavoriteRemovedImplCopyWithImpl<
          _$FavoriteMediaListFavoriteRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Media media) favoriteRemoved,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) {
    return favoriteRemoved(media);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(Media media)? favoriteRemoved,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) {
    return favoriteRemoved?.call(media);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Media media)? favoriteRemoved,
    TResult Function()? triedAgain,
    TResult Function(List<Media> media)? mediaChanged,
    required TResult orElse(),
  }) {
    if (favoriteRemoved != null) {
      return favoriteRemoved(media);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteMediaListFetched value) fetched,
    required TResult Function(FavoriteMediaListFavoriteRemoved value)
        favoriteRemoved,
    required TResult Function(FavoriteMediaListTriedAgain value) triedAgain,
    required TResult Function(FavoriteMediaListMediaChanged value) mediaChanged,
  }) {
    return favoriteRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteMediaListFetched value)? fetched,
    TResult? Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult? Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult? Function(FavoriteMediaListMediaChanged value)? mediaChanged,
  }) {
    return favoriteRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteMediaListFetched value)? fetched,
    TResult Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult Function(FavoriteMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (favoriteRemoved != null) {
      return favoriteRemoved(this);
    }
    return orElse();
  }
}

abstract class FavoriteMediaListFavoriteRemoved
    implements FavoriteMediaListEvent {
  const factory FavoriteMediaListFavoriteRemoved(final Media media) =
      _$FavoriteMediaListFavoriteRemovedImpl;

  Media get media;
  @JsonKey(ignore: true)
  _$$FavoriteMediaListFavoriteRemovedImplCopyWith<
          _$FavoriteMediaListFavoriteRemovedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteMediaListTriedAgainImplCopyWith<$Res> {
  factory _$$FavoriteMediaListTriedAgainImplCopyWith(
          _$FavoriteMediaListTriedAgainImpl value,
          $Res Function(_$FavoriteMediaListTriedAgainImpl) then) =
      __$$FavoriteMediaListTriedAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteMediaListTriedAgainImplCopyWithImpl<$Res>
    extends _$FavoriteMediaListEventCopyWithImpl<$Res,
        _$FavoriteMediaListTriedAgainImpl>
    implements _$$FavoriteMediaListTriedAgainImplCopyWith<$Res> {
  __$$FavoriteMediaListTriedAgainImplCopyWithImpl(
      _$FavoriteMediaListTriedAgainImpl _value,
      $Res Function(_$FavoriteMediaListTriedAgainImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteMediaListTriedAgainImpl
    with DiagnosticableTreeMixin
    implements FavoriteMediaListTriedAgain {
  const _$FavoriteMediaListTriedAgainImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteMediaListEvent.triedAgain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FavoriteMediaListEvent.triedAgain'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteMediaListTriedAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Media media) favoriteRemoved,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) {
    return triedAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(Media media)? favoriteRemoved,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) {
    return triedAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Media media)? favoriteRemoved,
    TResult Function()? triedAgain,
    TResult Function(List<Media> media)? mediaChanged,
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
    required TResult Function(FavoriteMediaListFetched value) fetched,
    required TResult Function(FavoriteMediaListFavoriteRemoved value)
        favoriteRemoved,
    required TResult Function(FavoriteMediaListTriedAgain value) triedAgain,
    required TResult Function(FavoriteMediaListMediaChanged value) mediaChanged,
  }) {
    return triedAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteMediaListFetched value)? fetched,
    TResult? Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult? Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult? Function(FavoriteMediaListMediaChanged value)? mediaChanged,
  }) {
    return triedAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteMediaListFetched value)? fetched,
    TResult Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult Function(FavoriteMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (triedAgain != null) {
      return triedAgain(this);
    }
    return orElse();
  }
}

abstract class FavoriteMediaListTriedAgain implements FavoriteMediaListEvent {
  const factory FavoriteMediaListTriedAgain() =
      _$FavoriteMediaListTriedAgainImpl;
}

/// @nodoc
abstract class _$$FavoriteMediaListMediaChangedImplCopyWith<$Res> {
  factory _$$FavoriteMediaListMediaChangedImplCopyWith(
          _$FavoriteMediaListMediaChangedImpl value,
          $Res Function(_$FavoriteMediaListMediaChangedImpl) then) =
      __$$FavoriteMediaListMediaChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Media> media});
}

/// @nodoc
class __$$FavoriteMediaListMediaChangedImplCopyWithImpl<$Res>
    extends _$FavoriteMediaListEventCopyWithImpl<$Res,
        _$FavoriteMediaListMediaChangedImpl>
    implements _$$FavoriteMediaListMediaChangedImplCopyWith<$Res> {
  __$$FavoriteMediaListMediaChangedImplCopyWithImpl(
      _$FavoriteMediaListMediaChangedImpl _value,
      $Res Function(_$FavoriteMediaListMediaChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$FavoriteMediaListMediaChangedImpl(
      null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc

class _$FavoriteMediaListMediaChangedImpl
    with DiagnosticableTreeMixin
    implements FavoriteMediaListMediaChanged {
  const _$FavoriteMediaListMediaChangedImpl(final List<Media> media)
      : _media = media;

  final List<Media> _media;
  @override
  List<Media> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteMediaListEvent.mediaChanged(media: $media)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoriteMediaListEvent.mediaChanged'))
      ..add(DiagnosticsProperty('media', media));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteMediaListMediaChangedImpl &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_media));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteMediaListMediaChangedImplCopyWith<
          _$FavoriteMediaListMediaChangedImpl>
      get copyWith => __$$FavoriteMediaListMediaChangedImplCopyWithImpl<
          _$FavoriteMediaListMediaChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Media media) favoriteRemoved,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) {
    return mediaChanged(media);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(Media media)? favoriteRemoved,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) {
    return mediaChanged?.call(media);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Media media)? favoriteRemoved,
    TResult Function()? triedAgain,
    TResult Function(List<Media> media)? mediaChanged,
    required TResult orElse(),
  }) {
    if (mediaChanged != null) {
      return mediaChanged(media);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteMediaListFetched value) fetched,
    required TResult Function(FavoriteMediaListFavoriteRemoved value)
        favoriteRemoved,
    required TResult Function(FavoriteMediaListTriedAgain value) triedAgain,
    required TResult Function(FavoriteMediaListMediaChanged value) mediaChanged,
  }) {
    return mediaChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteMediaListFetched value)? fetched,
    TResult? Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult? Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult? Function(FavoriteMediaListMediaChanged value)? mediaChanged,
  }) {
    return mediaChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteMediaListFetched value)? fetched,
    TResult Function(FavoriteMediaListFavoriteRemoved value)? favoriteRemoved,
    TResult Function(FavoriteMediaListTriedAgain value)? triedAgain,
    TResult Function(FavoriteMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (mediaChanged != null) {
      return mediaChanged(this);
    }
    return orElse();
  }
}

abstract class FavoriteMediaListMediaChanged implements FavoriteMediaListEvent {
  const factory FavoriteMediaListMediaChanged(final List<Media> media) =
      _$FavoriteMediaListMediaChangedImpl;

  List<Media> get media;
  @JsonKey(ignore: true)
  _$$FavoriteMediaListMediaChangedImplCopyWith<
          _$FavoriteMediaListMediaChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteMediaListState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Media> get mediaList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteMediaListStateCopyWith<FavoriteMediaListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteMediaListStateCopyWith<$Res> {
  factory $FavoriteMediaListStateCopyWith(FavoriteMediaListState value,
          $Res Function(FavoriteMediaListState) then) =
      _$FavoriteMediaListStateCopyWithImpl<$Res, FavoriteMediaListState>;
  @useResult
  $Res call({BlocStatus status, List<Media> mediaList});
}

/// @nodoc
class _$FavoriteMediaListStateCopyWithImpl<$Res,
        $Val extends FavoriteMediaListState>
    implements $FavoriteMediaListStateCopyWith<$Res> {
  _$FavoriteMediaListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mediaList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      mediaList: null == mediaList
          ? _value.mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyMediaListStateImplCopyWith<$Res>
    implements $FavoriteMediaListStateCopyWith<$Res> {
  factory _$$DailyMediaListStateImplCopyWith(_$DailyMediaListStateImpl value,
          $Res Function(_$DailyMediaListStateImpl) then) =
      __$$DailyMediaListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<Media> mediaList});
}

/// @nodoc
class __$$DailyMediaListStateImplCopyWithImpl<$Res>
    extends _$FavoriteMediaListStateCopyWithImpl<$Res,
        _$DailyMediaListStateImpl>
    implements _$$DailyMediaListStateImplCopyWith<$Res> {
  __$$DailyMediaListStateImplCopyWithImpl(_$DailyMediaListStateImpl _value,
      $Res Function(_$DailyMediaListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mediaList = null,
  }) {
    return _then(_$DailyMediaListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      mediaList: null == mediaList
          ? _value._mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc

class _$DailyMediaListStateImpl extends _DailyMediaListState {
  const _$DailyMediaListStateImpl(
      {required this.status, final List<Media> mediaList = const []})
      : _mediaList = mediaList,
        super._();

  @override
  final BlocStatus status;
  final List<Media> _mediaList;
  @override
  @JsonKey()
  List<Media> get mediaList {
    if (_mediaList is EqualUnmodifiableListView) return _mediaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaList);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._mediaList, _mediaList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_mediaList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMediaListStateImplCopyWith<_$DailyMediaListStateImpl> get copyWith =>
      __$$DailyMediaListStateImplCopyWithImpl<_$DailyMediaListStateImpl>(
          this, _$identity);
}

abstract class _DailyMediaListState extends FavoriteMediaListState {
  const factory _DailyMediaListState(
      {required final BlocStatus status,
      final List<Media> mediaList}) = _$DailyMediaListStateImpl;
  const _DailyMediaListState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<Media> get mediaList;
  @override
  @JsonKey(ignore: true)
  _$$DailyMediaListStateImplCopyWith<_$DailyMediaListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
