// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_media_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailyMediaListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<Media> media)? mediaChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyMediaListFetched value) fetched,
    required TResult Function(DailyMediaListRefreshed value) refreshed,
    required TResult Function(DailyMediaListFavoriteToggled value)
        favoriteToggled,
    required TResult Function(DailyMediaListTriedAgain value) triedAgain,
    required TResult Function(DailyMediaListMediaChanged value) mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaListFetched value)? fetched,
    TResult? Function(DailyMediaListRefreshed value)? refreshed,
    TResult? Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaListMediaChanged value)? mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaListFetched value)? fetched,
    TResult Function(DailyMediaListRefreshed value)? refreshed,
    TResult Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult Function(DailyMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMediaListEventCopyWith<$Res> {
  factory $DailyMediaListEventCopyWith(
          DailyMediaListEvent value, $Res Function(DailyMediaListEvent) then) =
      _$DailyMediaListEventCopyWithImpl<$Res, DailyMediaListEvent>;
}

/// @nodoc
class _$DailyMediaListEventCopyWithImpl<$Res, $Val extends DailyMediaListEvent>
    implements $DailyMediaListEventCopyWith<$Res> {
  _$DailyMediaListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DailyMediaListFetchedImplCopyWith<$Res> {
  factory _$$DailyMediaListFetchedImplCopyWith(
          _$DailyMediaListFetchedImpl value,
          $Res Function(_$DailyMediaListFetchedImpl) then) =
      __$$DailyMediaListFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyMediaListFetchedImplCopyWithImpl<$Res>
    extends _$DailyMediaListEventCopyWithImpl<$Res, _$DailyMediaListFetchedImpl>
    implements _$$DailyMediaListFetchedImplCopyWith<$Res> {
  __$$DailyMediaListFetchedImplCopyWithImpl(_$DailyMediaListFetchedImpl _value,
      $Res Function(_$DailyMediaListFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyMediaListFetchedImpl
    with DiagnosticableTreeMixin
    implements DailyMediaListFetched {
  const _$DailyMediaListFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMediaListEvent.fetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DailyMediaListEvent.fetched'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaListFetchedImpl);
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
    required TResult Function(List<Media> media) mediaChanged,
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
    TResult? Function(List<Media> media)? mediaChanged,
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
    required TResult Function(DailyMediaListFetched value) fetched,
    required TResult Function(DailyMediaListRefreshed value) refreshed,
    required TResult Function(DailyMediaListFavoriteToggled value)
        favoriteToggled,
    required TResult Function(DailyMediaListTriedAgain value) triedAgain,
    required TResult Function(DailyMediaListMediaChanged value) mediaChanged,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaListFetched value)? fetched,
    TResult? Function(DailyMediaListRefreshed value)? refreshed,
    TResult? Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaListMediaChanged value)? mediaChanged,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaListFetched value)? fetched,
    TResult Function(DailyMediaListRefreshed value)? refreshed,
    TResult Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult Function(DailyMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class DailyMediaListFetched implements DailyMediaListEvent {
  const factory DailyMediaListFetched() = _$DailyMediaListFetchedImpl;
}

/// @nodoc
abstract class _$$DailyMediaListRefreshedImplCopyWith<$Res> {
  factory _$$DailyMediaListRefreshedImplCopyWith(
          _$DailyMediaListRefreshedImpl value,
          $Res Function(_$DailyMediaListRefreshedImpl) then) =
      __$$DailyMediaListRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyMediaListRefreshedImplCopyWithImpl<$Res>
    extends _$DailyMediaListEventCopyWithImpl<$Res,
        _$DailyMediaListRefreshedImpl>
    implements _$$DailyMediaListRefreshedImplCopyWith<$Res> {
  __$$DailyMediaListRefreshedImplCopyWithImpl(
      _$DailyMediaListRefreshedImpl _value,
      $Res Function(_$DailyMediaListRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyMediaListRefreshedImpl
    with DiagnosticableTreeMixin
    implements DailyMediaListRefreshed {
  const _$DailyMediaListRefreshedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMediaListEvent.refreshed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DailyMediaListEvent.refreshed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaListRefreshedImpl);
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
    required TResult Function(List<Media> media) mediaChanged,
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
    TResult? Function(List<Media> media)? mediaChanged,
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
    TResult Function(List<Media> media)? mediaChanged,
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
    required TResult Function(DailyMediaListFetched value) fetched,
    required TResult Function(DailyMediaListRefreshed value) refreshed,
    required TResult Function(DailyMediaListFavoriteToggled value)
        favoriteToggled,
    required TResult Function(DailyMediaListTriedAgain value) triedAgain,
    required TResult Function(DailyMediaListMediaChanged value) mediaChanged,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaListFetched value)? fetched,
    TResult? Function(DailyMediaListRefreshed value)? refreshed,
    TResult? Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaListMediaChanged value)? mediaChanged,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaListFetched value)? fetched,
    TResult Function(DailyMediaListRefreshed value)? refreshed,
    TResult Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult Function(DailyMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class DailyMediaListRefreshed implements DailyMediaListEvent {
  const factory DailyMediaListRefreshed() = _$DailyMediaListRefreshedImpl;
}

/// @nodoc
abstract class _$$DailyMediaListFavoriteToggledImplCopyWith<$Res> {
  factory _$$DailyMediaListFavoriteToggledImplCopyWith(
          _$DailyMediaListFavoriteToggledImpl value,
          $Res Function(_$DailyMediaListFavoriteToggledImpl) then) =
      __$$DailyMediaListFavoriteToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Media media});

  $MediaCopyWith<$Res> get media;
}

/// @nodoc
class __$$DailyMediaListFavoriteToggledImplCopyWithImpl<$Res>
    extends _$DailyMediaListEventCopyWithImpl<$Res,
        _$DailyMediaListFavoriteToggledImpl>
    implements _$$DailyMediaListFavoriteToggledImplCopyWith<$Res> {
  __$$DailyMediaListFavoriteToggledImplCopyWithImpl(
      _$DailyMediaListFavoriteToggledImpl _value,
      $Res Function(_$DailyMediaListFavoriteToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$DailyMediaListFavoriteToggledImpl(
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

class _$DailyMediaListFavoriteToggledImpl
    with DiagnosticableTreeMixin
    implements DailyMediaListFavoriteToggled {
  const _$DailyMediaListFavoriteToggledImpl(this.media);

  @override
  final Media media;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMediaListEvent.favoriteToggled(media: $media)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyMediaListEvent.favoriteToggled'))
      ..add(DiagnosticsProperty('media', media));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaListFavoriteToggledImpl &&
            (identical(other.media, media) || other.media == media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMediaListFavoriteToggledImplCopyWith<
          _$DailyMediaListFavoriteToggledImpl>
      get copyWith => __$$DailyMediaListFavoriteToggledImplCopyWithImpl<
          _$DailyMediaListFavoriteToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
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
    TResult? Function(List<Media> media)? mediaChanged,
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
    TResult Function(List<Media> media)? mediaChanged,
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
    required TResult Function(DailyMediaListFetched value) fetched,
    required TResult Function(DailyMediaListRefreshed value) refreshed,
    required TResult Function(DailyMediaListFavoriteToggled value)
        favoriteToggled,
    required TResult Function(DailyMediaListTriedAgain value) triedAgain,
    required TResult Function(DailyMediaListMediaChanged value) mediaChanged,
  }) {
    return favoriteToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaListFetched value)? fetched,
    TResult? Function(DailyMediaListRefreshed value)? refreshed,
    TResult? Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaListMediaChanged value)? mediaChanged,
  }) {
    return favoriteToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaListFetched value)? fetched,
    TResult Function(DailyMediaListRefreshed value)? refreshed,
    TResult Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult Function(DailyMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(this);
    }
    return orElse();
  }
}

abstract class DailyMediaListFavoriteToggled implements DailyMediaListEvent {
  const factory DailyMediaListFavoriteToggled(final Media media) =
      _$DailyMediaListFavoriteToggledImpl;

  Media get media;
  @JsonKey(ignore: true)
  _$$DailyMediaListFavoriteToggledImplCopyWith<
          _$DailyMediaListFavoriteToggledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DailyMediaListTriedAgainImplCopyWith<$Res> {
  factory _$$DailyMediaListTriedAgainImplCopyWith(
          _$DailyMediaListTriedAgainImpl value,
          $Res Function(_$DailyMediaListTriedAgainImpl) then) =
      __$$DailyMediaListTriedAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyMediaListTriedAgainImplCopyWithImpl<$Res>
    extends _$DailyMediaListEventCopyWithImpl<$Res,
        _$DailyMediaListTriedAgainImpl>
    implements _$$DailyMediaListTriedAgainImplCopyWith<$Res> {
  __$$DailyMediaListTriedAgainImplCopyWithImpl(
      _$DailyMediaListTriedAgainImpl _value,
      $Res Function(_$DailyMediaListTriedAgainImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyMediaListTriedAgainImpl
    with DiagnosticableTreeMixin
    implements DailyMediaListTriedAgain {
  const _$DailyMediaListTriedAgainImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMediaListEvent.triedAgain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DailyMediaListEvent.triedAgain'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaListTriedAgainImpl);
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
    required TResult Function(List<Media> media) mediaChanged,
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
    TResult? Function(List<Media> media)? mediaChanged,
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
    required TResult Function(DailyMediaListFetched value) fetched,
    required TResult Function(DailyMediaListRefreshed value) refreshed,
    required TResult Function(DailyMediaListFavoriteToggled value)
        favoriteToggled,
    required TResult Function(DailyMediaListTriedAgain value) triedAgain,
    required TResult Function(DailyMediaListMediaChanged value) mediaChanged,
  }) {
    return triedAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaListFetched value)? fetched,
    TResult? Function(DailyMediaListRefreshed value)? refreshed,
    TResult? Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaListMediaChanged value)? mediaChanged,
  }) {
    return triedAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaListFetched value)? fetched,
    TResult Function(DailyMediaListRefreshed value)? refreshed,
    TResult Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult Function(DailyMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (triedAgain != null) {
      return triedAgain(this);
    }
    return orElse();
  }
}

abstract class DailyMediaListTriedAgain implements DailyMediaListEvent {
  const factory DailyMediaListTriedAgain() = _$DailyMediaListTriedAgainImpl;
}

/// @nodoc
abstract class _$$DailyMediaListMediaChangedImplCopyWith<$Res> {
  factory _$$DailyMediaListMediaChangedImplCopyWith(
          _$DailyMediaListMediaChangedImpl value,
          $Res Function(_$DailyMediaListMediaChangedImpl) then) =
      __$$DailyMediaListMediaChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Media> media});
}

/// @nodoc
class __$$DailyMediaListMediaChangedImplCopyWithImpl<$Res>
    extends _$DailyMediaListEventCopyWithImpl<$Res,
        _$DailyMediaListMediaChangedImpl>
    implements _$$DailyMediaListMediaChangedImplCopyWith<$Res> {
  __$$DailyMediaListMediaChangedImplCopyWithImpl(
      _$DailyMediaListMediaChangedImpl _value,
      $Res Function(_$DailyMediaListMediaChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$DailyMediaListMediaChangedImpl(
      null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc

class _$DailyMediaListMediaChangedImpl
    with DiagnosticableTreeMixin
    implements DailyMediaListMediaChanged {
  const _$DailyMediaListMediaChangedImpl(final List<Media> media)
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
    return 'DailyMediaListEvent.mediaChanged(media: $media)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyMediaListEvent.mediaChanged'))
      ..add(DiagnosticsProperty('media', media));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaListMediaChangedImpl &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_media));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMediaListMediaChangedImplCopyWith<_$DailyMediaListMediaChangedImpl>
      get copyWith => __$$DailyMediaListMediaChangedImplCopyWithImpl<
          _$DailyMediaListMediaChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(Media media) favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) {
    return mediaChanged(media);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(Media media)? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) {
    return mediaChanged?.call(media);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(Media media)? favoriteToggled,
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
    required TResult Function(DailyMediaListFetched value) fetched,
    required TResult Function(DailyMediaListRefreshed value) refreshed,
    required TResult Function(DailyMediaListFavoriteToggled value)
        favoriteToggled,
    required TResult Function(DailyMediaListTriedAgain value) triedAgain,
    required TResult Function(DailyMediaListMediaChanged value) mediaChanged,
  }) {
    return mediaChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaListFetched value)? fetched,
    TResult? Function(DailyMediaListRefreshed value)? refreshed,
    TResult? Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaListMediaChanged value)? mediaChanged,
  }) {
    return mediaChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaListFetched value)? fetched,
    TResult Function(DailyMediaListRefreshed value)? refreshed,
    TResult Function(DailyMediaListFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaListTriedAgain value)? triedAgain,
    TResult Function(DailyMediaListMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (mediaChanged != null) {
      return mediaChanged(this);
    }
    return orElse();
  }
}

abstract class DailyMediaListMediaChanged implements DailyMediaListEvent {
  const factory DailyMediaListMediaChanged(final List<Media> media) =
      _$DailyMediaListMediaChangedImpl;

  List<Media> get media;
  @JsonKey(ignore: true)
  _$$DailyMediaListMediaChangedImplCopyWith<_$DailyMediaListMediaChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DailyMediaListState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Media> get mediaList => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyMediaListStateCopyWith<DailyMediaListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMediaListStateCopyWith<$Res> {
  factory $DailyMediaListStateCopyWith(
          DailyMediaListState value, $Res Function(DailyMediaListState) then) =
      _$DailyMediaListStateCopyWithImpl<$Res, DailyMediaListState>;
  @useResult
  $Res call({BlocStatus status, List<Media> mediaList, bool hasReachedMax});
}

/// @nodoc
class _$DailyMediaListStateCopyWithImpl<$Res, $Val extends DailyMediaListState>
    implements $DailyMediaListStateCopyWith<$Res> {
  _$DailyMediaListStateCopyWithImpl(this._value, this._then);

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
              as BlocStatus,
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
abstract class _$$DailyMediaListStateImplCopyWith<$Res>
    implements $DailyMediaListStateCopyWith<$Res> {
  factory _$$DailyMediaListStateImplCopyWith(_$DailyMediaListStateImpl value,
          $Res Function(_$DailyMediaListStateImpl) then) =
      __$$DailyMediaListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<Media> mediaList, bool hasReachedMax});
}

/// @nodoc
class __$$DailyMediaListStateImplCopyWithImpl<$Res>
    extends _$DailyMediaListStateCopyWithImpl<$Res, _$DailyMediaListStateImpl>
    implements _$$DailyMediaListStateImplCopyWith<$Res> {
  __$$DailyMediaListStateImplCopyWithImpl(_$DailyMediaListStateImpl _value,
      $Res Function(_$DailyMediaListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mediaList = null,
    Object? hasReachedMax = null,
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
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DailyMediaListStateImpl extends _DailyMediaListState {
  const _$DailyMediaListStateImpl(
      {required this.status,
      final List<Media> mediaList = const [],
      this.hasReachedMax = false})
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
  @JsonKey()
  final bool hasReachedMax;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaListStateImpl &&
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
  _$$DailyMediaListStateImplCopyWith<_$DailyMediaListStateImpl> get copyWith =>
      __$$DailyMediaListStateImplCopyWithImpl<_$DailyMediaListStateImpl>(
          this, _$identity);
}

abstract class _DailyMediaListState extends DailyMediaListState {
  const factory _DailyMediaListState(
      {required final BlocStatus status,
      final List<Media> mediaList,
      final bool hasReachedMax}) = _$DailyMediaListStateImpl;
  const _DailyMediaListState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<Media> get mediaList;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$DailyMediaListStateImplCopyWith<_$DailyMediaListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
