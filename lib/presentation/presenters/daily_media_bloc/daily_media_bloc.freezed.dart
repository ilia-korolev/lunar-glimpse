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
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<Media> media)? mediaChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
    required TResult Function(DailyMediaMediaChanged value) mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaMediaChanged value)? mediaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
    TResult Function(DailyMediaMediaChanged value)? mediaChanged,
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
  @useResult
  $Res call({Date date});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$$DailyMediaFetchedImplCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$DailyMediaFetchedImpl>
    implements _$$DailyMediaFetchedImplCopyWith<$Res> {
  __$$DailyMediaFetchedImplCopyWithImpl(_$DailyMediaFetchedImpl _value,
      $Res Function(_$DailyMediaFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DailyMediaFetchedImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get date {
    return $DateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value));
    });
  }
}

/// @nodoc

class _$DailyMediaFetchedImpl implements DailyMediaFetched {
  const _$DailyMediaFetchedImpl({required this.date});

  @override
  final Date date;

  @override
  String toString() {
    return 'DailyMediaEvent.fetched(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaFetchedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMediaFetchedImplCopyWith<_$DailyMediaFetchedImpl> get copyWith =>
      __$$DailyMediaFetchedImplCopyWithImpl<_$DailyMediaFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) {
    return fetched(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) {
    return fetched?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<Media> media)? mediaChanged,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
    required TResult Function(DailyMediaMediaChanged value) mediaChanged,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaMediaChanged value)? mediaChanged,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
    TResult Function(DailyMediaMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class DailyMediaFetched implements DailyMediaEvent {
  const factory DailyMediaFetched({required final Date date}) =
      _$DailyMediaFetchedImpl;

  Date get date;
  @JsonKey(ignore: true)
  _$$DailyMediaFetchedImplCopyWith<_$DailyMediaFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DailyMediaFavoriteToggledImplCopyWith<$Res> {
  factory _$$DailyMediaFavoriteToggledImplCopyWith(
          _$DailyMediaFavoriteToggledImpl value,
          $Res Function(_$DailyMediaFavoriteToggledImpl) then) =
      __$$DailyMediaFavoriteToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyMediaFavoriteToggledImplCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$DailyMediaFavoriteToggledImpl>
    implements _$$DailyMediaFavoriteToggledImplCopyWith<$Res> {
  __$$DailyMediaFavoriteToggledImplCopyWithImpl(
      _$DailyMediaFavoriteToggledImpl _value,
      $Res Function(_$DailyMediaFavoriteToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyMediaFavoriteToggledImpl implements DailyMediaFavoriteToggled {
  const _$DailyMediaFavoriteToggledImpl();

  @override
  String toString() {
    return 'DailyMediaEvent.favoriteToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaFavoriteToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) {
    return favoriteToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) {
    return favoriteToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<Media> media)? mediaChanged,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
    required TResult Function(DailyMediaMediaChanged value) mediaChanged,
  }) {
    return favoriteToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaMediaChanged value)? mediaChanged,
  }) {
    return favoriteToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
    TResult Function(DailyMediaMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(this);
    }
    return orElse();
  }
}

abstract class DailyMediaFavoriteToggled implements DailyMediaEvent {
  const factory DailyMediaFavoriteToggled() = _$DailyMediaFavoriteToggledImpl;
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

class _$DailyMediaTriedAgainImpl implements DailyMediaTriedAgain {
  const _$DailyMediaTriedAgainImpl();

  @override
  String toString() {
    return 'DailyMediaEvent.triedAgain()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaTriedAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) {
    return triedAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) {
    return triedAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
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
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
    required TResult Function(DailyMediaMediaChanged value) mediaChanged,
  }) {
    return triedAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaMediaChanged value)? mediaChanged,
  }) {
    return triedAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
    TResult Function(DailyMediaMediaChanged value)? mediaChanged,
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
abstract class _$$DailyMediaMediaChangedImplCopyWith<$Res> {
  factory _$$DailyMediaMediaChangedImplCopyWith(
          _$DailyMediaMediaChangedImpl value,
          $Res Function(_$DailyMediaMediaChangedImpl) then) =
      __$$DailyMediaMediaChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Media> media});
}

/// @nodoc
class __$$DailyMediaMediaChangedImplCopyWithImpl<$Res>
    extends _$DailyMediaEventCopyWithImpl<$Res, _$DailyMediaMediaChangedImpl>
    implements _$$DailyMediaMediaChangedImplCopyWith<$Res> {
  __$$DailyMediaMediaChangedImplCopyWithImpl(
      _$DailyMediaMediaChangedImpl _value,
      $Res Function(_$DailyMediaMediaChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$DailyMediaMediaChangedImpl(
      null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc

class _$DailyMediaMediaChangedImpl implements DailyMediaMediaChanged {
  const _$DailyMediaMediaChangedImpl(final List<Media> media) : _media = media;

  final List<Media> _media;
  @override
  List<Media> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  String toString() {
    return 'DailyMediaEvent.mediaChanged(media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMediaMediaChangedImpl &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_media));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMediaMediaChangedImplCopyWith<_$DailyMediaMediaChangedImpl>
      get copyWith => __$$DailyMediaMediaChangedImplCopyWithImpl<
          _$DailyMediaMediaChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<Media> media) mediaChanged,
  }) {
    return mediaChanged(media);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<Media> media)? mediaChanged,
  }) {
    return mediaChanged?.call(media);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
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
    required TResult Function(DailyMediaFetched value) fetched,
    required TResult Function(DailyMediaFavoriteToggled value) favoriteToggled,
    required TResult Function(DailyMediaTriedAgain value) triedAgain,
    required TResult Function(DailyMediaMediaChanged value) mediaChanged,
  }) {
    return mediaChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyMediaFetched value)? fetched,
    TResult? Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult? Function(DailyMediaTriedAgain value)? triedAgain,
    TResult? Function(DailyMediaMediaChanged value)? mediaChanged,
  }) {
    return mediaChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyMediaFetched value)? fetched,
    TResult Function(DailyMediaFavoriteToggled value)? favoriteToggled,
    TResult Function(DailyMediaTriedAgain value)? triedAgain,
    TResult Function(DailyMediaMediaChanged value)? mediaChanged,
    required TResult orElse(),
  }) {
    if (mediaChanged != null) {
      return mediaChanged(this);
    }
    return orElse();
  }
}

abstract class DailyMediaMediaChanged implements DailyMediaEvent {
  const factory DailyMediaMediaChanged(final List<Media> media) =
      _$DailyMediaMediaChangedImpl;

  List<Media> get media;
  @JsonKey(ignore: true)
  _$$DailyMediaMediaChangedImplCopyWith<_$DailyMediaMediaChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DailyMediaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Media media) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Media media)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Media media)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMediaStateCopyWith<$Res> {
  factory $DailyMediaStateCopyWith(
          DailyMediaState value, $Res Function(DailyMediaState) then) =
      _$DailyMediaStateCopyWithImpl<$Res, DailyMediaState>;
}

/// @nodoc
class _$DailyMediaStateCopyWithImpl<$Res, $Val extends DailyMediaState>
    implements $DailyMediaStateCopyWith<$Res> {
  _$DailyMediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DailyMediaStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Media media) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Media media)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Media media)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends DailyMediaState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DailyMediaStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Media media) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Media media)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Media media)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends DailyMediaState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Media media});

  $MediaCopyWith<$Res> get media;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DailyMediaStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$SuccessImpl(
      media: null == media
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

class _$SuccessImpl extends _Success {
  const _$SuccessImpl({required this.media}) : super._();

  @override
  final Media media;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.media, media) || other.media == media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Media media) success,
    required TResult Function(String message) failure,
  }) {
    return success(media);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Media media)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(media);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Media media)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(media);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends DailyMediaState {
  const factory _Success({required final Media media}) = _$SuccessImpl;
  const _Success._() : super._();

  Media get media;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$DailyMediaStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Media media) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Media media)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Media media)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends DailyMediaState {
  const factory _Failure({required final String message}) = _$FailureImpl;
  const _Failure._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
