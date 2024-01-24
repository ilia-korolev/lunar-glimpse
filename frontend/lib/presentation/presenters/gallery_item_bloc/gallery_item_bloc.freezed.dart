// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GalleryItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryItemFetched value) fetched,
    required TResult Function(GalleryItemFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryItemTriedAgain value) triedAgain,
    required TResult Function(GalleryItemItemsChanged value) itemsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryItemFetched value)? fetched,
    TResult? Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryItemTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemItemsChanged value)? itemsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryItemFetched value)? fetched,
    TResult Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryItemTriedAgain value)? triedAgain,
    TResult Function(GalleryItemItemsChanged value)? itemsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryItemEventCopyWith<$Res> {
  factory $GalleryItemEventCopyWith(
          GalleryItemEvent value, $Res Function(GalleryItemEvent) then) =
      _$GalleryItemEventCopyWithImpl<$Res, GalleryItemEvent>;
}

/// @nodoc
class _$GalleryItemEventCopyWithImpl<$Res, $Val extends GalleryItemEvent>
    implements $GalleryItemEventCopyWith<$Res> {
  _$GalleryItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GalleryItemFetchedImplCopyWith<$Res> {
  factory _$$GalleryItemFetchedImplCopyWith(_$GalleryItemFetchedImpl value,
          $Res Function(_$GalleryItemFetchedImpl) then) =
      __$$GalleryItemFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Date date});

  $DateCopyWith<$Res> get date;
}

/// @nodoc
class __$$GalleryItemFetchedImplCopyWithImpl<$Res>
    extends _$GalleryItemEventCopyWithImpl<$Res, _$GalleryItemFetchedImpl>
    implements _$$GalleryItemFetchedImplCopyWith<$Res> {
  __$$GalleryItemFetchedImplCopyWithImpl(_$GalleryItemFetchedImpl _value,
      $Res Function(_$GalleryItemFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$GalleryItemFetchedImpl(
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

class _$GalleryItemFetchedImpl implements GalleryItemFetched {
  const _$GalleryItemFetchedImpl({required this.date});

  @override
  final Date date;

  @override
  String toString() {
    return 'GalleryItemEvent.fetched(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryItemFetchedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryItemFetchedImplCopyWith<_$GalleryItemFetchedImpl> get copyWith =>
      __$$GalleryItemFetchedImplCopyWithImpl<_$GalleryItemFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
  }) {
    return fetched(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
  }) {
    return fetched?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
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
    required TResult Function(GalleryItemFetched value) fetched,
    required TResult Function(GalleryItemFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryItemTriedAgain value) triedAgain,
    required TResult Function(GalleryItemItemsChanged value) itemsChanged,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryItemFetched value)? fetched,
    TResult? Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryItemTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemItemsChanged value)? itemsChanged,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryItemFetched value)? fetched,
    TResult Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryItemTriedAgain value)? triedAgain,
    TResult Function(GalleryItemItemsChanged value)? itemsChanged,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class GalleryItemFetched implements GalleryItemEvent {
  const factory GalleryItemFetched({required final Date date}) =
      _$GalleryItemFetchedImpl;

  Date get date;
  @JsonKey(ignore: true)
  _$$GalleryItemFetchedImplCopyWith<_$GalleryItemFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryItemFavoriteToggledImplCopyWith<$Res> {
  factory _$$GalleryItemFavoriteToggledImplCopyWith(
          _$GalleryItemFavoriteToggledImpl value,
          $Res Function(_$GalleryItemFavoriteToggledImpl) then) =
      __$$GalleryItemFavoriteToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryItemFavoriteToggledImplCopyWithImpl<$Res>
    extends _$GalleryItemEventCopyWithImpl<$Res,
        _$GalleryItemFavoriteToggledImpl>
    implements _$$GalleryItemFavoriteToggledImplCopyWith<$Res> {
  __$$GalleryItemFavoriteToggledImplCopyWithImpl(
      _$GalleryItemFavoriteToggledImpl _value,
      $Res Function(_$GalleryItemFavoriteToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryItemFavoriteToggledImpl implements GalleryItemFavoriteToggled {
  const _$GalleryItemFavoriteToggledImpl();

  @override
  String toString() {
    return 'GalleryItemEvent.favoriteToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryItemFavoriteToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
  }) {
    return favoriteToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
  }) {
    return favoriteToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
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
    required TResult Function(GalleryItemFetched value) fetched,
    required TResult Function(GalleryItemFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryItemTriedAgain value) triedAgain,
    required TResult Function(GalleryItemItemsChanged value) itemsChanged,
  }) {
    return favoriteToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryItemFetched value)? fetched,
    TResult? Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryItemTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemItemsChanged value)? itemsChanged,
  }) {
    return favoriteToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryItemFetched value)? fetched,
    TResult Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryItemTriedAgain value)? triedAgain,
    TResult Function(GalleryItemItemsChanged value)? itemsChanged,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(this);
    }
    return orElse();
  }
}

abstract class GalleryItemFavoriteToggled implements GalleryItemEvent {
  const factory GalleryItemFavoriteToggled() = _$GalleryItemFavoriteToggledImpl;
}

/// @nodoc
abstract class _$$GalleryItemTriedAgainImplCopyWith<$Res> {
  factory _$$GalleryItemTriedAgainImplCopyWith(
          _$GalleryItemTriedAgainImpl value,
          $Res Function(_$GalleryItemTriedAgainImpl) then) =
      __$$GalleryItemTriedAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryItemTriedAgainImplCopyWithImpl<$Res>
    extends _$GalleryItemEventCopyWithImpl<$Res, _$GalleryItemTriedAgainImpl>
    implements _$$GalleryItemTriedAgainImplCopyWith<$Res> {
  __$$GalleryItemTriedAgainImplCopyWithImpl(_$GalleryItemTriedAgainImpl _value,
      $Res Function(_$GalleryItemTriedAgainImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryItemTriedAgainImpl implements GalleryItemTriedAgain {
  const _$GalleryItemTriedAgainImpl();

  @override
  String toString() {
    return 'GalleryItemEvent.triedAgain()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryItemTriedAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
  }) {
    return triedAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
  }) {
    return triedAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
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
    required TResult Function(GalleryItemFetched value) fetched,
    required TResult Function(GalleryItemFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryItemTriedAgain value) triedAgain,
    required TResult Function(GalleryItemItemsChanged value) itemsChanged,
  }) {
    return triedAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryItemFetched value)? fetched,
    TResult? Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryItemTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemItemsChanged value)? itemsChanged,
  }) {
    return triedAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryItemFetched value)? fetched,
    TResult Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryItemTriedAgain value)? triedAgain,
    TResult Function(GalleryItemItemsChanged value)? itemsChanged,
    required TResult orElse(),
  }) {
    if (triedAgain != null) {
      return triedAgain(this);
    }
    return orElse();
  }
}

abstract class GalleryItemTriedAgain implements GalleryItemEvent {
  const factory GalleryItemTriedAgain() = _$GalleryItemTriedAgainImpl;
}

/// @nodoc
abstract class _$$GalleryItemItemsChangedImplCopyWith<$Res> {
  factory _$$GalleryItemItemsChangedImplCopyWith(
          _$GalleryItemItemsChangedImpl value,
          $Res Function(_$GalleryItemItemsChangedImpl) then) =
      __$$GalleryItemItemsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GalleryItem> items});
}

/// @nodoc
class __$$GalleryItemItemsChangedImplCopyWithImpl<$Res>
    extends _$GalleryItemEventCopyWithImpl<$Res, _$GalleryItemItemsChangedImpl>
    implements _$$GalleryItemItemsChangedImplCopyWith<$Res> {
  __$$GalleryItemItemsChangedImplCopyWithImpl(
      _$GalleryItemItemsChangedImpl _value,
      $Res Function(_$GalleryItemItemsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$GalleryItemItemsChangedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GalleryItem>,
    ));
  }
}

/// @nodoc

class _$GalleryItemItemsChangedImpl implements GalleryItemItemsChanged {
  const _$GalleryItemItemsChangedImpl({required final List<GalleryItem> items})
      : _items = items;

  final List<GalleryItem> _items;
  @override
  List<GalleryItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'GalleryItemEvent.itemsChanged(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryItemItemsChangedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryItemItemsChangedImplCopyWith<_$GalleryItemItemsChangedImpl>
      get copyWith => __$$GalleryItemItemsChangedImplCopyWithImpl<
          _$GalleryItemItemsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Date date) fetched,
    required TResult Function() favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
  }) {
    return itemsChanged(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Date date)? fetched,
    TResult? Function()? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
  }) {
    return itemsChanged?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Date date)? fetched,
    TResult Function()? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    required TResult orElse(),
  }) {
    if (itemsChanged != null) {
      return itemsChanged(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryItemFetched value) fetched,
    required TResult Function(GalleryItemFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryItemTriedAgain value) triedAgain,
    required TResult Function(GalleryItemItemsChanged value) itemsChanged,
  }) {
    return itemsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryItemFetched value)? fetched,
    TResult? Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryItemTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemItemsChanged value)? itemsChanged,
  }) {
    return itemsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryItemFetched value)? fetched,
    TResult Function(GalleryItemFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryItemTriedAgain value)? triedAgain,
    TResult Function(GalleryItemItemsChanged value)? itemsChanged,
    required TResult orElse(),
  }) {
    if (itemsChanged != null) {
      return itemsChanged(this);
    }
    return orElse();
  }
}

abstract class GalleryItemItemsChanged implements GalleryItemEvent {
  const factory GalleryItemItemsChanged(
      {required final List<GalleryItem> items}) = _$GalleryItemItemsChangedImpl;

  List<GalleryItem> get items;
  @JsonKey(ignore: true)
  _$$GalleryItemItemsChangedImplCopyWith<_$GalleryItemItemsChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GalleryItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GalleryItem item) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GalleryItem item)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GalleryItem item)? success,
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
abstract class $GalleryItemStateCopyWith<$Res> {
  factory $GalleryItemStateCopyWith(
          GalleryItemState value, $Res Function(GalleryItemState) then) =
      _$GalleryItemStateCopyWithImpl<$Res, GalleryItemState>;
}

/// @nodoc
class _$GalleryItemStateCopyWithImpl<$Res, $Val extends GalleryItemState>
    implements $GalleryItemStateCopyWith<$Res> {
  _$GalleryItemStateCopyWithImpl(this._value, this._then);

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
    extends _$GalleryItemStateCopyWithImpl<$Res, _$InitialImpl>
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
    required TResult Function(GalleryItem item) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GalleryItem item)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GalleryItem item)? success,
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

abstract class _Initial extends GalleryItemState {
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
    extends _$GalleryItemStateCopyWithImpl<$Res, _$LoadingImpl>
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
    required TResult Function(GalleryItem item) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GalleryItem item)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GalleryItem item)? success,
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

abstract class _Loading extends GalleryItemState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GalleryItem item});

  $GalleryItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$GalleryItemStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$SuccessImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as GalleryItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GalleryItemCopyWith<$Res> get item {
    return $GalleryItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl({required this.item}) : super._();

  @override
  final GalleryItem item;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

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
    required TResult Function(GalleryItem item) success,
    required TResult Function(String message) failure,
  }) {
    return success(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GalleryItem item)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GalleryItem item)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(item);
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

abstract class _Success extends GalleryItemState {
  const factory _Success({required final GalleryItem item}) = _$SuccessImpl;
  const _Success._() : super._();

  GalleryItem get item;
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
    extends _$GalleryItemStateCopyWithImpl<$Res, _$FailureImpl>
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
    required TResult Function(GalleryItem item) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GalleryItem item)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GalleryItem item)? success,
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

abstract class _Failure extends GalleryItemState {
  const factory _Failure({required final String message}) = _$FailureImpl;
  const _Failure._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
