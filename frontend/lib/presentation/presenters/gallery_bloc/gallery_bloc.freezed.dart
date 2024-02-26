// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(GalleryItem item) favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
    required TResult Function(AppSettings appSettings) appSettingsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(GalleryItem item)? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
    TResult? Function(AppSettings appSettings)? appSettingsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(GalleryItem item)? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    TResult Function(AppSettings appSettings)? appSettingsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryFetched value) fetched,
    required TResult Function(GalleryRefreshed value) refreshed,
    required TResult Function(GalleryFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryTriedAgain value) triedAgain,
    required TResult Function(GalleryItemsChanged value) itemsChanged,
    required TResult Function(GalleryAppSettingsChanged value)
        appSettingsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFetched value)? fetched,
    TResult? Function(GalleryRefreshed value)? refreshed,
    TResult? Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemsChanged value)? itemsChanged,
    TResult? Function(GalleryAppSettingsChanged value)? appSettingsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFetched value)? fetched,
    TResult Function(GalleryRefreshed value)? refreshed,
    TResult Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryTriedAgain value)? triedAgain,
    TResult Function(GalleryItemsChanged value)? itemsChanged,
    TResult Function(GalleryAppSettingsChanged value)? appSettingsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryEventCopyWith<$Res> {
  factory $GalleryEventCopyWith(
          GalleryEvent value, $Res Function(GalleryEvent) then) =
      _$GalleryEventCopyWithImpl<$Res, GalleryEvent>;
}

/// @nodoc
class _$GalleryEventCopyWithImpl<$Res, $Val extends GalleryEvent>
    implements $GalleryEventCopyWith<$Res> {
  _$GalleryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GalleryFetchedImplCopyWith<$Res> {
  factory _$$GalleryFetchedImplCopyWith(_$GalleryFetchedImpl value,
          $Res Function(_$GalleryFetchedImpl) then) =
      __$$GalleryFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryFetchedImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryFetchedImpl>
    implements _$$GalleryFetchedImplCopyWith<$Res> {
  __$$GalleryFetchedImplCopyWithImpl(
      _$GalleryFetchedImpl _value, $Res Function(_$GalleryFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryFetchedImpl
    with DiagnosticableTreeMixin
    implements GalleryFetched {
  const _$GalleryFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryEvent.fetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GalleryEvent.fetched'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GalleryFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(GalleryItem item) favoriteToggled,
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
    TResult? Function()? refreshed,
    TResult? Function(GalleryItem item)? favoriteToggled,
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
    TResult Function()? refreshed,
    TResult Function(GalleryItem item)? favoriteToggled,
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
    required TResult Function(GalleryFetched value) fetched,
    required TResult Function(GalleryRefreshed value) refreshed,
    required TResult Function(GalleryFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryTriedAgain value) triedAgain,
    required TResult Function(GalleryItemsChanged value) itemsChanged,
    required TResult Function(GalleryAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFetched value)? fetched,
    TResult? Function(GalleryRefreshed value)? refreshed,
    TResult? Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemsChanged value)? itemsChanged,
    TResult? Function(GalleryAppSettingsChanged value)? appSettingsChanged,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFetched value)? fetched,
    TResult Function(GalleryRefreshed value)? refreshed,
    TResult Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryTriedAgain value)? triedAgain,
    TResult Function(GalleryItemsChanged value)? itemsChanged,
    TResult Function(GalleryAppSettingsChanged value)? appSettingsChanged,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class GalleryFetched implements GalleryEvent {
  const factory GalleryFetched() = _$GalleryFetchedImpl;
}

/// @nodoc
abstract class _$$GalleryRefreshedImplCopyWith<$Res> {
  factory _$$GalleryRefreshedImplCopyWith(_$GalleryRefreshedImpl value,
          $Res Function(_$GalleryRefreshedImpl) then) =
      __$$GalleryRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryRefreshedImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryRefreshedImpl>
    implements _$$GalleryRefreshedImplCopyWith<$Res> {
  __$$GalleryRefreshedImplCopyWithImpl(_$GalleryRefreshedImpl _value,
      $Res Function(_$GalleryRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryRefreshedImpl
    with DiagnosticableTreeMixin
    implements GalleryRefreshed {
  const _$GalleryRefreshedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryEvent.refreshed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GalleryEvent.refreshed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GalleryRefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(GalleryItem item) favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
    required TResult Function(AppSettings appSettings) appSettingsChanged,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(GalleryItem item)? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
    TResult? Function(AppSettings appSettings)? appSettingsChanged,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(GalleryItem item)? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    TResult Function(AppSettings appSettings)? appSettingsChanged,
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
    required TResult Function(GalleryFetched value) fetched,
    required TResult Function(GalleryRefreshed value) refreshed,
    required TResult Function(GalleryFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryTriedAgain value) triedAgain,
    required TResult Function(GalleryItemsChanged value) itemsChanged,
    required TResult Function(GalleryAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFetched value)? fetched,
    TResult? Function(GalleryRefreshed value)? refreshed,
    TResult? Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemsChanged value)? itemsChanged,
    TResult? Function(GalleryAppSettingsChanged value)? appSettingsChanged,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFetched value)? fetched,
    TResult Function(GalleryRefreshed value)? refreshed,
    TResult Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryTriedAgain value)? triedAgain,
    TResult Function(GalleryItemsChanged value)? itemsChanged,
    TResult Function(GalleryAppSettingsChanged value)? appSettingsChanged,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class GalleryRefreshed implements GalleryEvent {
  const factory GalleryRefreshed() = _$GalleryRefreshedImpl;
}

/// @nodoc
abstract class _$$GalleryFavoriteToggledImplCopyWith<$Res> {
  factory _$$GalleryFavoriteToggledImplCopyWith(
          _$GalleryFavoriteToggledImpl value,
          $Res Function(_$GalleryFavoriteToggledImpl) then) =
      __$$GalleryFavoriteToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GalleryItem item});

  $GalleryItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$GalleryFavoriteToggledImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryFavoriteToggledImpl>
    implements _$$GalleryFavoriteToggledImplCopyWith<$Res> {
  __$$GalleryFavoriteToggledImplCopyWithImpl(
      _$GalleryFavoriteToggledImpl _value,
      $Res Function(_$GalleryFavoriteToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$GalleryFavoriteToggledImpl(
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

class _$GalleryFavoriteToggledImpl
    with DiagnosticableTreeMixin
    implements GalleryFavoriteToggled {
  const _$GalleryFavoriteToggledImpl({required this.item});

  @override
  final GalleryItem item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryEvent.favoriteToggled(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GalleryEvent.favoriteToggled'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryFavoriteToggledImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryFavoriteToggledImplCopyWith<_$GalleryFavoriteToggledImpl>
      get copyWith => __$$GalleryFavoriteToggledImplCopyWithImpl<
          _$GalleryFavoriteToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(GalleryItem item) favoriteToggled,
    required TResult Function() triedAgain,
    required TResult Function(List<GalleryItem> items) itemsChanged,
    required TResult Function(AppSettings appSettings) appSettingsChanged,
  }) {
    return favoriteToggled(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function(GalleryItem item)? favoriteToggled,
    TResult? Function()? triedAgain,
    TResult? Function(List<GalleryItem> items)? itemsChanged,
    TResult? Function(AppSettings appSettings)? appSettingsChanged,
  }) {
    return favoriteToggled?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function(GalleryItem item)? favoriteToggled,
    TResult Function()? triedAgain,
    TResult Function(List<GalleryItem> items)? itemsChanged,
    TResult Function(AppSettings appSettings)? appSettingsChanged,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryFetched value) fetched,
    required TResult Function(GalleryRefreshed value) refreshed,
    required TResult Function(GalleryFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryTriedAgain value) triedAgain,
    required TResult Function(GalleryItemsChanged value) itemsChanged,
    required TResult Function(GalleryAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return favoriteToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFetched value)? fetched,
    TResult? Function(GalleryRefreshed value)? refreshed,
    TResult? Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemsChanged value)? itemsChanged,
    TResult? Function(GalleryAppSettingsChanged value)? appSettingsChanged,
  }) {
    return favoriteToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFetched value)? fetched,
    TResult Function(GalleryRefreshed value)? refreshed,
    TResult Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryTriedAgain value)? triedAgain,
    TResult Function(GalleryItemsChanged value)? itemsChanged,
    TResult Function(GalleryAppSettingsChanged value)? appSettingsChanged,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(this);
    }
    return orElse();
  }
}

abstract class GalleryFavoriteToggled implements GalleryEvent {
  const factory GalleryFavoriteToggled({required final GalleryItem item}) =
      _$GalleryFavoriteToggledImpl;

  GalleryItem get item;
  @JsonKey(ignore: true)
  _$$GalleryFavoriteToggledImplCopyWith<_$GalleryFavoriteToggledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryTriedAgainImplCopyWith<$Res> {
  factory _$$GalleryTriedAgainImplCopyWith(_$GalleryTriedAgainImpl value,
          $Res Function(_$GalleryTriedAgainImpl) then) =
      __$$GalleryTriedAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryTriedAgainImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryTriedAgainImpl>
    implements _$$GalleryTriedAgainImplCopyWith<$Res> {
  __$$GalleryTriedAgainImplCopyWithImpl(_$GalleryTriedAgainImpl _value,
      $Res Function(_$GalleryTriedAgainImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryTriedAgainImpl
    with DiagnosticableTreeMixin
    implements GalleryTriedAgain {
  const _$GalleryTriedAgainImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryEvent.triedAgain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GalleryEvent.triedAgain'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GalleryTriedAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(GalleryItem item) favoriteToggled,
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
    TResult? Function()? refreshed,
    TResult? Function(GalleryItem item)? favoriteToggled,
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
    TResult Function()? refreshed,
    TResult Function(GalleryItem item)? favoriteToggled,
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
    required TResult Function(GalleryFetched value) fetched,
    required TResult Function(GalleryRefreshed value) refreshed,
    required TResult Function(GalleryFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryTriedAgain value) triedAgain,
    required TResult Function(GalleryItemsChanged value) itemsChanged,
    required TResult Function(GalleryAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return triedAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFetched value)? fetched,
    TResult? Function(GalleryRefreshed value)? refreshed,
    TResult? Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemsChanged value)? itemsChanged,
    TResult? Function(GalleryAppSettingsChanged value)? appSettingsChanged,
  }) {
    return triedAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFetched value)? fetched,
    TResult Function(GalleryRefreshed value)? refreshed,
    TResult Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryTriedAgain value)? triedAgain,
    TResult Function(GalleryItemsChanged value)? itemsChanged,
    TResult Function(GalleryAppSettingsChanged value)? appSettingsChanged,
    required TResult orElse(),
  }) {
    if (triedAgain != null) {
      return triedAgain(this);
    }
    return orElse();
  }
}

abstract class GalleryTriedAgain implements GalleryEvent {
  const factory GalleryTriedAgain() = _$GalleryTriedAgainImpl;
}

/// @nodoc
abstract class _$$GalleryItemsChangedImplCopyWith<$Res> {
  factory _$$GalleryItemsChangedImplCopyWith(_$GalleryItemsChangedImpl value,
          $Res Function(_$GalleryItemsChangedImpl) then) =
      __$$GalleryItemsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GalleryItem> items});
}

/// @nodoc
class __$$GalleryItemsChangedImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryItemsChangedImpl>
    implements _$$GalleryItemsChangedImplCopyWith<$Res> {
  __$$GalleryItemsChangedImplCopyWithImpl(_$GalleryItemsChangedImpl _value,
      $Res Function(_$GalleryItemsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$GalleryItemsChangedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GalleryItem>,
    ));
  }
}

/// @nodoc

class _$GalleryItemsChangedImpl
    with DiagnosticableTreeMixin
    implements GalleryItemsChanged {
  const _$GalleryItemsChangedImpl({required final List<GalleryItem> items})
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
    return 'GalleryEvent.itemsChanged(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GalleryEvent.itemsChanged'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryItemsChangedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryItemsChangedImplCopyWith<_$GalleryItemsChangedImpl> get copyWith =>
      __$$GalleryItemsChangedImplCopyWithImpl<_$GalleryItemsChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(GalleryItem item) favoriteToggled,
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
    TResult? Function()? refreshed,
    TResult? Function(GalleryItem item)? favoriteToggled,
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
    TResult Function()? refreshed,
    TResult Function(GalleryItem item)? favoriteToggled,
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
    required TResult Function(GalleryFetched value) fetched,
    required TResult Function(GalleryRefreshed value) refreshed,
    required TResult Function(GalleryFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryTriedAgain value) triedAgain,
    required TResult Function(GalleryItemsChanged value) itemsChanged,
    required TResult Function(GalleryAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return itemsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFetched value)? fetched,
    TResult? Function(GalleryRefreshed value)? refreshed,
    TResult? Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemsChanged value)? itemsChanged,
    TResult? Function(GalleryAppSettingsChanged value)? appSettingsChanged,
  }) {
    return itemsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFetched value)? fetched,
    TResult Function(GalleryRefreshed value)? refreshed,
    TResult Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryTriedAgain value)? triedAgain,
    TResult Function(GalleryItemsChanged value)? itemsChanged,
    TResult Function(GalleryAppSettingsChanged value)? appSettingsChanged,
    required TResult orElse(),
  }) {
    if (itemsChanged != null) {
      return itemsChanged(this);
    }
    return orElse();
  }
}

abstract class GalleryItemsChanged implements GalleryEvent {
  const factory GalleryItemsChanged({required final List<GalleryItem> items}) =
      _$GalleryItemsChangedImpl;

  List<GalleryItem> get items;
  @JsonKey(ignore: true)
  _$$GalleryItemsChangedImplCopyWith<_$GalleryItemsChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryAppSettingsChangedImplCopyWith<$Res> {
  factory _$$GalleryAppSettingsChangedImplCopyWith(
          _$GalleryAppSettingsChangedImpl value,
          $Res Function(_$GalleryAppSettingsChangedImpl) then) =
      __$$GalleryAppSettingsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppSettings appSettings});

  $AppSettingsCopyWith<$Res> get appSettings;
}

/// @nodoc
class __$$GalleryAppSettingsChangedImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryAppSettingsChangedImpl>
    implements _$$GalleryAppSettingsChangedImplCopyWith<$Res> {
  __$$GalleryAppSettingsChangedImplCopyWithImpl(
      _$GalleryAppSettingsChangedImpl _value,
      $Res Function(_$GalleryAppSettingsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSettings = null,
  }) {
    return _then(_$GalleryAppSettingsChangedImpl(
      appSettings: null == appSettings
          ? _value.appSettings
          : appSettings // ignore: cast_nullable_to_non_nullable
              as AppSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppSettingsCopyWith<$Res> get appSettings {
    return $AppSettingsCopyWith<$Res>(_value.appSettings, (value) {
      return _then(_value.copyWith(appSettings: value));
    });
  }
}

/// @nodoc

class _$GalleryAppSettingsChangedImpl
    with DiagnosticableTreeMixin
    implements GalleryAppSettingsChanged {
  const _$GalleryAppSettingsChangedImpl({required this.appSettings});

  @override
  final AppSettings appSettings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GalleryEvent.appSettingsChanged(appSettings: $appSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GalleryEvent.appSettingsChanged'))
      ..add(DiagnosticsProperty('appSettings', appSettings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryAppSettingsChangedImpl &&
            (identical(other.appSettings, appSettings) ||
                other.appSettings == appSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryAppSettingsChangedImplCopyWith<_$GalleryAppSettingsChangedImpl>
      get copyWith => __$$GalleryAppSettingsChangedImplCopyWithImpl<
          _$GalleryAppSettingsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function(GalleryItem item) favoriteToggled,
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
    TResult? Function()? refreshed,
    TResult? Function(GalleryItem item)? favoriteToggled,
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
    TResult Function()? refreshed,
    TResult Function(GalleryItem item)? favoriteToggled,
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
    required TResult Function(GalleryFetched value) fetched,
    required TResult Function(GalleryRefreshed value) refreshed,
    required TResult Function(GalleryFavoriteToggled value) favoriteToggled,
    required TResult Function(GalleryTriedAgain value) triedAgain,
    required TResult Function(GalleryItemsChanged value) itemsChanged,
    required TResult Function(GalleryAppSettingsChanged value)
        appSettingsChanged,
  }) {
    return appSettingsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryFetched value)? fetched,
    TResult? Function(GalleryRefreshed value)? refreshed,
    TResult? Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult? Function(GalleryTriedAgain value)? triedAgain,
    TResult? Function(GalleryItemsChanged value)? itemsChanged,
    TResult? Function(GalleryAppSettingsChanged value)? appSettingsChanged,
  }) {
    return appSettingsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryFetched value)? fetched,
    TResult Function(GalleryRefreshed value)? refreshed,
    TResult Function(GalleryFavoriteToggled value)? favoriteToggled,
    TResult Function(GalleryTriedAgain value)? triedAgain,
    TResult Function(GalleryItemsChanged value)? itemsChanged,
    TResult Function(GalleryAppSettingsChanged value)? appSettingsChanged,
    required TResult orElse(),
  }) {
    if (appSettingsChanged != null) {
      return appSettingsChanged(this);
    }
    return orElse();
  }
}

abstract class GalleryAppSettingsChanged implements GalleryEvent {
  const factory GalleryAppSettingsChanged(
          {required final AppSettings appSettings}) =
      _$GalleryAppSettingsChangedImpl;

  AppSettings get appSettings;
  @JsonKey(ignore: true)
  _$$GalleryAppSettingsChangedImplCopyWith<_$GalleryAppSettingsChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GalleryState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<GalleryItem> get items => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalleryStateCopyWith<GalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryStateCopyWith<$Res> {
  factory $GalleryStateCopyWith(
          GalleryState value, $Res Function(GalleryState) then) =
      _$GalleryStateCopyWithImpl<$Res, GalleryState>;
  @useResult
  $Res call({BlocStatus status, List<GalleryItem> items, bool hasReachedMax});
}

/// @nodoc
class _$GalleryStateCopyWithImpl<$Res, $Val extends GalleryState>
    implements $GalleryStateCopyWith<$Res> {
  _$GalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? hasReachedMax = null,
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
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryStateImplCopyWith<$Res>
    implements $GalleryStateCopyWith<$Res> {
  factory _$$GalleryStateImplCopyWith(
          _$GalleryStateImpl value, $Res Function(_$GalleryStateImpl) then) =
      __$$GalleryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<GalleryItem> items, bool hasReachedMax});
}

/// @nodoc
class __$$GalleryStateImplCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res, _$GalleryStateImpl>
    implements _$$GalleryStateImplCopyWith<$Res> {
  __$$GalleryStateImplCopyWithImpl(
      _$GalleryStateImpl _value, $Res Function(_$GalleryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$GalleryStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GalleryItem>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GalleryStateImpl extends _GalleryState {
  const _$GalleryStateImpl(
      {required this.status,
      final List<GalleryItem> items = const [],
      this.hasReachedMax = false})
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
  @JsonKey()
  final bool hasReachedMax;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_items), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryStateImplCopyWith<_$GalleryStateImpl> get copyWith =>
      __$$GalleryStateImplCopyWithImpl<_$GalleryStateImpl>(this, _$identity);
}

abstract class _GalleryState extends GalleryState {
  const factory _GalleryState(
      {required final BlocStatus status,
      final List<GalleryItem> items,
      final bool hasReachedMax}) = _$GalleryStateImpl;
  const _GalleryState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<GalleryItem> get items;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$GalleryStateImplCopyWith<_$GalleryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
