// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryFavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(GalleryItem item) itemUnfavorited,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
    required TResult Function(AppSettings appSettings) appSettingsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(GalleryItem item)? itemUnfavorited,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
    TResult? Function(AppSettings appSettings)? appSettingsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(GalleryItem item)? itemUnfavorited,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    TResult Function(AppSettings appSettings)? appSettingsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryFavoritesFetched value) fetched,
    required TResult Function(GalleryFavoritesItemUnfavorited value)
        itemUnfavorited,
    required TResult Function(GalleryFavoritesTriedAgain value) triedAgain,
    required TResult Function(GalleryFavoritesItemsChanged value) itemsChanged,
    required TResult Function(GalleryFavoritesAppSettingsChanged value)
        appSettingsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFavoritesFetched value)? fetched,
    TResult? Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult? Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult? Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult? Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFavoritesFetched value)? fetched,
    TResult Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryFavoritesEventCopyWith<$Res> {
  factory $GalleryFavoritesEventCopyWith(GalleryFavoritesEvent value,
          $Res Function(GalleryFavoritesEvent) then) =
      _$GalleryFavoritesEventCopyWithImpl<$Res, GalleryFavoritesEvent>;
}

/// @nodoc
class _$GalleryFavoritesEventCopyWithImpl<$Res,
        $Val extends GalleryFavoritesEvent>
    implements $GalleryFavoritesEventCopyWith<$Res> {
  _$GalleryFavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GalleryFavoritesFetchedImplCopyWith<$Res> {
  factory _$$GalleryFavoritesFetchedImplCopyWith(
          _$GalleryFavoritesFetchedImpl value,
          $Res Function(_$GalleryFavoritesFetchedImpl) then) =
      __$$GalleryFavoritesFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryFavoritesFetchedImplCopyWithImpl<$Res>
    extends _$GalleryFavoritesEventCopyWithImpl<$Res,
        _$GalleryFavoritesFetchedImpl>
    implements _$$GalleryFavoritesFetchedImplCopyWith<$Res> {
  __$$GalleryFavoritesFetchedImplCopyWithImpl(
      _$GalleryFavoritesFetchedImpl _value,
      $Res Function(_$GalleryFavoritesFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GalleryFavoritesFetchedImpl
    with DiagnosticableTreeMixin
    implements GalleryFavoritesFetched {
  const _$GalleryFavoritesFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryFavoritesEvent.fetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'GalleryFavoritesEvent.fetched'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryFavoritesFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(GalleryItem item) itemUnfavorited,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
    required TResult Function(AppSettings appSettings) appSettingsChanged,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(GalleryItem item)? itemUnfavorited,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
    TResult? Function(AppSettings appSettings)? appSettingsChanged,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(GalleryItem item)? itemUnfavorited,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    TResult Function(AppSettings appSettings)? appSettingsChanged,
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
    required TResult Function(GalleryFavoritesFetched value) fetched,
    required TResult Function(GalleryFavoritesItemUnfavorited value)
        itemUnfavorited,
    required TResult Function(GalleryFavoritesTriedAgain value) triedAgain,
    required TResult Function(GalleryFavoritesItemsChanged value) itemsChanged,
    required TResult Function(GalleryFavoritesAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFavoritesFetched value)? fetched,
    TResult? Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult? Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult? Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult? Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFavoritesFetched value)? fetched,
    TResult Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class GalleryFavoritesFetched implements GalleryFavoritesEvent {
  const factory GalleryFavoritesFetched() = _$GalleryFavoritesFetchedImpl;
}

/// @nodoc
abstract class _$$GalleryFavoritesItemUnfavoritedImplCopyWith<$Res> {
  factory _$$GalleryFavoritesItemUnfavoritedImplCopyWith(
          _$GalleryFavoritesItemUnfavoritedImpl value,
          $Res Function(_$GalleryFavoritesItemUnfavoritedImpl) then) =
      __$$GalleryFavoritesItemUnfavoritedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GalleryItem item});

  $GalleryItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$GalleryFavoritesItemUnfavoritedImplCopyWithImpl<$Res>
    extends _$GalleryFavoritesEventCopyWithImpl<$Res,
        _$GalleryFavoritesItemUnfavoritedImpl>
    implements _$$GalleryFavoritesItemUnfavoritedImplCopyWith<$Res> {
  __$$GalleryFavoritesItemUnfavoritedImplCopyWithImpl(
      _$GalleryFavoritesItemUnfavoritedImpl _value,
      $Res Function(_$GalleryFavoritesItemUnfavoritedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$GalleryFavoritesItemUnfavoritedImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as GalleryItem,
    ));
  }

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GalleryItemCopyWith<$Res> get item {
    return $GalleryItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$GalleryFavoritesItemUnfavoritedImpl
    with DiagnosticableTreeMixin
    implements GalleryFavoritesItemUnfavorited {
  const _$GalleryFavoritesItemUnfavoritedImpl({required this.item});

  @override
  final GalleryItem item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryFavoritesEvent.itemUnfavorited(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'GalleryFavoritesEvent.itemUnfavorited'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryFavoritesItemUnfavoritedImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryFavoritesItemUnfavoritedImplCopyWith<
          _$GalleryFavoritesItemUnfavoritedImpl>
      get copyWith => __$$GalleryFavoritesItemUnfavoritedImplCopyWithImpl<
          _$GalleryFavoritesItemUnfavoritedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(GalleryItem item) itemUnfavorited,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
    required TResult Function(AppSettings appSettings) appSettingsChanged,
  }) {
    return itemUnfavorited(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(GalleryItem item)? itemUnfavorited,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
    TResult? Function(AppSettings appSettings)? appSettingsChanged,
  }) {
    return itemUnfavorited?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(GalleryItem item)? itemUnfavorited,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    TResult Function(AppSettings appSettings)? appSettingsChanged,
    required TResult orElse(),
  }) {
    if (itemUnfavorited != null) {
      return itemUnfavorited(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryFavoritesFetched value) fetched,
    required TResult Function(GalleryFavoritesItemUnfavorited value)
        itemUnfavorited,
    required TResult Function(GalleryFavoritesTriedAgain value) triedAgain,
    required TResult Function(GalleryFavoritesItemsChanged value) itemsChanged,
    required TResult Function(GalleryFavoritesAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return itemUnfavorited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFavoritesFetched value)? fetched,
    TResult? Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult? Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult? Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult? Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
  }) {
    return itemUnfavorited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFavoritesFetched value)? fetched,
    TResult Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
    required TResult orElse(),
  }) {
    if (itemUnfavorited != null) {
      return itemUnfavorited(this);
    }
    return orElse();
  }
}

abstract class GalleryFavoritesItemUnfavorited
    implements GalleryFavoritesEvent {
  const factory GalleryFavoritesItemUnfavorited(
          {required final GalleryItem item}) =
      _$GalleryFavoritesItemUnfavoritedImpl;

  GalleryItem get item;

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryFavoritesItemUnfavoritedImplCopyWith<
          _$GalleryFavoritesItemUnfavoritedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryFavoritesTriedAgainImplCopyWith<$Res> {
  factory _$$GalleryFavoritesTriedAgainImplCopyWith(
          _$GalleryFavoritesTriedAgainImpl value,
          $Res Function(_$GalleryFavoritesTriedAgainImpl) then) =
      __$$GalleryFavoritesTriedAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryFavoritesTriedAgainImplCopyWithImpl<$Res>
    extends _$GalleryFavoritesEventCopyWithImpl<$Res,
        _$GalleryFavoritesTriedAgainImpl>
    implements _$$GalleryFavoritesTriedAgainImplCopyWith<$Res> {
  __$$GalleryFavoritesTriedAgainImplCopyWithImpl(
      _$GalleryFavoritesTriedAgainImpl _value,
      $Res Function(_$GalleryFavoritesTriedAgainImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GalleryFavoritesTriedAgainImpl
    with DiagnosticableTreeMixin
    implements GalleryFavoritesTriedAgain {
  const _$GalleryFavoritesTriedAgainImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryFavoritesEvent.triedAgain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'GalleryFavoritesEvent.triedAgain'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryFavoritesTriedAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(GalleryItem item) itemUnfavorited,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
    required TResult Function(AppSettings appSettings) appSettingsChanged,
  }) {
    return triedAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(GalleryItem item)? itemUnfavorited,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
    TResult? Function(AppSettings appSettings)? appSettingsChanged,
  }) {
    return triedAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(GalleryItem item)? itemUnfavorited,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    TResult Function(AppSettings appSettings)? appSettingsChanged,
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
    required TResult Function(GalleryFavoritesFetched value) fetched,
    required TResult Function(GalleryFavoritesItemUnfavorited value)
        itemUnfavorited,
    required TResult Function(GalleryFavoritesTriedAgain value) triedAgain,
    required TResult Function(GalleryFavoritesItemsChanged value) itemsChanged,
    required TResult Function(GalleryFavoritesAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return triedAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFavoritesFetched value)? fetched,
    TResult? Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult? Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult? Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult? Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
  }) {
    return triedAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFavoritesFetched value)? fetched,
    TResult Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
    required TResult orElse(),
  }) {
    if (triedAgain != null) {
      return triedAgain(this);
    }
    return orElse();
  }
}

abstract class GalleryFavoritesTriedAgain implements GalleryFavoritesEvent {
  const factory GalleryFavoritesTriedAgain() = _$GalleryFavoritesTriedAgainImpl;
}

/// @nodoc
abstract class _$$GalleryFavoritesItemsChangedImplCopyWith<$Res> {
  factory _$$GalleryFavoritesItemsChangedImplCopyWith(
          _$GalleryFavoritesItemsChangedImpl value,
          $Res Function(_$GalleryFavoritesItemsChangedImpl) then) =
      __$$GalleryFavoritesItemsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GalleryItem> items});
}

/// @nodoc
class __$$GalleryFavoritesItemsChangedImplCopyWithImpl<$Res>
    extends _$GalleryFavoritesEventCopyWithImpl<$Res,
        _$GalleryFavoritesItemsChangedImpl>
    implements _$$GalleryFavoritesItemsChangedImplCopyWith<$Res> {
  __$$GalleryFavoritesItemsChangedImplCopyWithImpl(
      _$GalleryFavoritesItemsChangedImpl _value,
      $Res Function(_$GalleryFavoritesItemsChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$GalleryFavoritesItemsChangedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GalleryItem>,
    ));
  }
}

/// @nodoc

class _$GalleryFavoritesItemsChangedImpl
    with DiagnosticableTreeMixin
    implements GalleryFavoritesItemsChanged {
  const _$GalleryFavoritesItemsChangedImpl(
      {required final List<GalleryItem> items})
      : _items = items;

  final List<GalleryItem> _items;
  @override
  List<GalleryItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryFavoritesEvent.itemsChanged(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GalleryFavoritesEvent.itemsChanged'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryFavoritesItemsChangedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryFavoritesItemsChangedImplCopyWith<
          _$GalleryFavoritesItemsChangedImpl>
      get copyWith => __$$GalleryFavoritesItemsChangedImplCopyWithImpl<
          _$GalleryFavoritesItemsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(GalleryItem item) itemUnfavorited,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
    required TResult Function(AppSettings appSettings) appSettingsChanged,
  }) {
    return itemsChanged(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(GalleryItem item)? itemUnfavorited,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
    TResult? Function(AppSettings appSettings)? appSettingsChanged,
  }) {
    return itemsChanged?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(GalleryItem item)? itemUnfavorited,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    TResult Function(AppSettings appSettings)? appSettingsChanged,
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
    required TResult Function(GalleryFavoritesFetched value) fetched,
    required TResult Function(GalleryFavoritesItemUnfavorited value)
        itemUnfavorited,
    required TResult Function(GalleryFavoritesTriedAgain value) triedAgain,
    required TResult Function(GalleryFavoritesItemsChanged value) itemsChanged,
    required TResult Function(GalleryFavoritesAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return itemsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFavoritesFetched value)? fetched,
    TResult? Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult? Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult? Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult? Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
  }) {
    return itemsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFavoritesFetched value)? fetched,
    TResult Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
    required TResult orElse(),
  }) {
    if (itemsChanged != null) {
      return itemsChanged(this);
    }
    return orElse();
  }
}

abstract class GalleryFavoritesItemsChanged implements GalleryFavoritesEvent {
  const factory GalleryFavoritesItemsChanged(
          {required final List<GalleryItem> items}) =
      _$GalleryFavoritesItemsChangedImpl;

  List<GalleryItem> get items;

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryFavoritesItemsChangedImplCopyWith<
          _$GalleryFavoritesItemsChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryFavoritesAppSettingsChangedImplCopyWith<$Res> {
  factory _$$GalleryFavoritesAppSettingsChangedImplCopyWith(
          _$GalleryFavoritesAppSettingsChangedImpl value,
          $Res Function(_$GalleryFavoritesAppSettingsChangedImpl) then) =
      __$$GalleryFavoritesAppSettingsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppSettings appSettings});

  $AppSettingsCopyWith<$Res> get appSettings;
}

/// @nodoc
class __$$GalleryFavoritesAppSettingsChangedImplCopyWithImpl<$Res>
    extends _$GalleryFavoritesEventCopyWithImpl<$Res,
        _$GalleryFavoritesAppSettingsChangedImpl>
    implements _$$GalleryFavoritesAppSettingsChangedImplCopyWith<$Res> {
  __$$GalleryFavoritesAppSettingsChangedImplCopyWithImpl(
      _$GalleryFavoritesAppSettingsChangedImpl _value,
      $Res Function(_$GalleryFavoritesAppSettingsChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSettings = null,
  }) {
    return _then(_$GalleryFavoritesAppSettingsChangedImpl(
      appSettings: null == appSettings
          ? _value.appSettings
          : appSettings // ignore: cast_nullable_to_non_nullable
              as AppSettings,
    ));
  }

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingsCopyWith<$Res> get appSettings {
    return $AppSettingsCopyWith<$Res>(_value.appSettings, (value) {
      return _then(_value.copyWith(appSettings: value));
    });
  }
}

/// @nodoc

class _$GalleryFavoritesAppSettingsChangedImpl
    with DiagnosticableTreeMixin
    implements GalleryFavoritesAppSettingsChanged {
  const _$GalleryFavoritesAppSettingsChangedImpl({required this.appSettings});

  @override
  final AppSettings appSettings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryFavoritesEvent.appSettingsChanged(appSettings: $appSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'GalleryFavoritesEvent.appSettingsChanged'))
      ..add(DiagnosticsProperty('appSettings', appSettings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryFavoritesAppSettingsChangedImpl &&
            (identical(other.appSettings, appSettings) ||
                other.appSettings == appSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSettings);

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryFavoritesAppSettingsChangedImplCopyWith<
          _$GalleryFavoritesAppSettingsChangedImpl>
      get copyWith => __$$GalleryFavoritesAppSettingsChangedImplCopyWithImpl<
          _$GalleryFavoritesAppSettingsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(GalleryItem item) itemUnfavorited,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
    required TResult Function(AppSettings appSettings) appSettingsChanged,
  }) {
    return appSettingsChanged(appSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(GalleryItem item)? itemUnfavorited,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
    TResult? Function(AppSettings appSettings)? appSettingsChanged,
  }) {
    return appSettingsChanged?.call(appSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(GalleryItem item)? itemUnfavorited,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    TResult Function(AppSettings appSettings)? appSettingsChanged,
    required TResult orElse(),
  }) {
    if (appSettingsChanged != null) {
      return appSettingsChanged(appSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryFavoritesFetched value) fetched,
    required TResult Function(GalleryFavoritesItemUnfavorited value)
        itemUnfavorited,
    required TResult Function(GalleryFavoritesTriedAgain value) triedAgain,
    required TResult Function(GalleryFavoritesItemsChanged value) itemsChanged,
    required TResult Function(GalleryFavoritesAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return appSettingsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFavoritesFetched value)? fetched,
    TResult? Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult? Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult? Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult? Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
  }) {
    return appSettingsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFavoritesFetched value)? fetched,
    TResult Function(GalleryFavoritesItemUnfavorited value)? itemUnfavorited,
    TResult Function(GalleryFavoritesTriedAgain value)? triedAgain,
    TResult Function(GalleryFavoritesItemsChanged value)? itemsChanged,
    TResult Function(GalleryFavoritesAppSettingsChanged value)?
        appSettingsChanged,
    required TResult orElse(),
  }) {
    if (appSettingsChanged != null) {
      return appSettingsChanged(this);
    }
    return orElse();
  }
}

abstract class GalleryFavoritesAppSettingsChanged
    implements GalleryFavoritesEvent {
  const factory GalleryFavoritesAppSettingsChanged(
          {required final AppSettings appSettings}) =
      _$GalleryFavoritesAppSettingsChangedImpl;

  AppSettings get appSettings;

  /// Create a copy of GalleryFavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryFavoritesAppSettingsChangedImplCopyWith<
          _$GalleryFavoritesAppSettingsChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GalleryFavoritesState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<GalleryItem> get items => throw _privateConstructorUsedError;

  /// Create a copy of GalleryFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GalleryFavoritesStateCopyWith<GalleryFavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryFavoritesStateCopyWith<$Res> {
  factory $GalleryFavoritesStateCopyWith(GalleryFavoritesState value,
          $Res Function(GalleryFavoritesState) then) =
      _$GalleryFavoritesStateCopyWithImpl<$Res, GalleryFavoritesState>;
  @useResult
  $Res call({BlocStatus status, List<GalleryItem> items});
}

/// @nodoc
class _$GalleryFavoritesStateCopyWithImpl<$Res,
        $Val extends GalleryFavoritesState>
    implements $GalleryFavoritesStateCopyWith<$Res> {
  _$GalleryFavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GalleryItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryFavoritesStateImplCopyWith<$Res>
    implements $GalleryFavoritesStateCopyWith<$Res> {
  factory _$$GalleryFavoritesStateImplCopyWith(
          _$GalleryFavoritesStateImpl value,
          $Res Function(_$GalleryFavoritesStateImpl) then) =
      __$$GalleryFavoritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<GalleryItem> items});
}

/// @nodoc
class __$$GalleryFavoritesStateImplCopyWithImpl<$Res>
    extends _$GalleryFavoritesStateCopyWithImpl<$Res,
        _$GalleryFavoritesStateImpl>
    implements _$$GalleryFavoritesStateImplCopyWith<$Res> {
  __$$GalleryFavoritesStateImplCopyWithImpl(_$GalleryFavoritesStateImpl _value,
      $Res Function(_$GalleryFavoritesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_$GalleryFavoritesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GalleryItem>,
    ));
  }
}

/// @nodoc

class _$GalleryFavoritesStateImpl extends _GalleryFavoritesState {
  const _$GalleryFavoritesStateImpl(
      {required this.status, final List<GalleryItem> items = const []})
      : _items = items,
        super._();

  @override
  final BlocStatus status;
  final List<GalleryItem> _items;
  @override
  @JsonKey()
  List<GalleryItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryFavoritesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_items));

  /// Create a copy of GalleryFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryFavoritesStateImplCopyWith<_$GalleryFavoritesStateImpl>
      get copyWith => __$$GalleryFavoritesStateImplCopyWithImpl<
          _$GalleryFavoritesStateImpl>(this, _$identity);
}

abstract class _GalleryFavoritesState extends GalleryFavoritesState {
  const factory _GalleryFavoritesState(
      {required final BlocStatus status,
      final List<GalleryItem> items}) = _$GalleryFavoritesStateImpl;
  const _GalleryFavoritesState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<GalleryItem> get items;

  /// Create a copy of GalleryFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryFavoritesStateImplCopyWith<_$GalleryFavoritesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
