// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function() triedAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function()? triedAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
    TResult Function()? triedAgain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsFetched value) fetched,
    required TResult Function(NewsRefreshed value) refreshed,
    required TResult Function(NewsTriedAgain value) triedAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsFetched value)? fetched,
    TResult? Function(NewsRefreshed value)? refreshed,
    TResult? Function(NewsTriedAgain value)? triedAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsFetched value)? fetched,
    TResult Function(NewsRefreshed value)? refreshed,
    TResult Function(NewsTriedAgain value)? triedAgain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewsFetchedImplCopyWith<$Res> {
  factory _$$NewsFetchedImplCopyWith(
          _$NewsFetchedImpl value, $Res Function(_$NewsFetchedImpl) then) =
      __$$NewsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsFetchedImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$NewsFetchedImpl>
    implements _$$NewsFetchedImplCopyWith<$Res> {
  __$$NewsFetchedImplCopyWithImpl(
      _$NewsFetchedImpl _value, $Res Function(_$NewsFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsFetchedImpl implements NewsFetched {
  const _$NewsFetchedImpl();

  @override
  String toString() {
    return 'NewsEvent.fetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function() triedAgain,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function()? triedAgain,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
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
    required TResult Function(NewsFetched value) fetched,
    required TResult Function(NewsRefreshed value) refreshed,
    required TResult Function(NewsTriedAgain value) triedAgain,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsFetched value)? fetched,
    TResult? Function(NewsRefreshed value)? refreshed,
    TResult? Function(NewsTriedAgain value)? triedAgain,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsFetched value)? fetched,
    TResult Function(NewsRefreshed value)? refreshed,
    TResult Function(NewsTriedAgain value)? triedAgain,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class NewsFetched implements NewsEvent {
  const factory NewsFetched() = _$NewsFetchedImpl;
}

/// @nodoc
abstract class _$$NewsRefreshedImplCopyWith<$Res> {
  factory _$$NewsRefreshedImplCopyWith(
          _$NewsRefreshedImpl value, $Res Function(_$NewsRefreshedImpl) then) =
      __$$NewsRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsRefreshedImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$NewsRefreshedImpl>
    implements _$$NewsRefreshedImplCopyWith<$Res> {
  __$$NewsRefreshedImplCopyWithImpl(
      _$NewsRefreshedImpl _value, $Res Function(_$NewsRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsRefreshedImpl implements NewsRefreshed {
  const _$NewsRefreshedImpl();

  @override
  String toString() {
    return 'NewsEvent.refreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsRefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function() triedAgain,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function()? triedAgain,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
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
    required TResult Function(NewsFetched value) fetched,
    required TResult Function(NewsRefreshed value) refreshed,
    required TResult Function(NewsTriedAgain value) triedAgain,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsFetched value)? fetched,
    TResult? Function(NewsRefreshed value)? refreshed,
    TResult? Function(NewsTriedAgain value)? triedAgain,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsFetched value)? fetched,
    TResult Function(NewsRefreshed value)? refreshed,
    TResult Function(NewsTriedAgain value)? triedAgain,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class NewsRefreshed implements NewsEvent {
  const factory NewsRefreshed() = _$NewsRefreshedImpl;
}

/// @nodoc
abstract class _$$NewsTriedAgainImplCopyWith<$Res> {
  factory _$$NewsTriedAgainImplCopyWith(_$NewsTriedAgainImpl value,
          $Res Function(_$NewsTriedAgainImpl) then) =
      __$$NewsTriedAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsTriedAgainImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$NewsTriedAgainImpl>
    implements _$$NewsTriedAgainImplCopyWith<$Res> {
  __$$NewsTriedAgainImplCopyWithImpl(
      _$NewsTriedAgainImpl _value, $Res Function(_$NewsTriedAgainImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsTriedAgainImpl implements NewsTriedAgain {
  const _$NewsTriedAgainImpl();

  @override
  String toString() {
    return 'NewsEvent.triedAgain()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsTriedAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() refreshed,
    required TResult Function() triedAgain,
  }) {
    return triedAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? refreshed,
    TResult? Function()? triedAgain,
  }) {
    return triedAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? refreshed,
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
    required TResult Function(NewsFetched value) fetched,
    required TResult Function(NewsRefreshed value) refreshed,
    required TResult Function(NewsTriedAgain value) triedAgain,
  }) {
    return triedAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsFetched value)? fetched,
    TResult? Function(NewsRefreshed value)? refreshed,
    TResult? Function(NewsTriedAgain value)? triedAgain,
  }) {
    return triedAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsFetched value)? fetched,
    TResult Function(NewsRefreshed value)? refreshed,
    TResult Function(NewsTriedAgain value)? triedAgain,
    required TResult orElse(),
  }) {
    if (triedAgain != null) {
      return triedAgain(this);
    }
    return orElse();
  }
}

abstract class NewsTriedAgain implements NewsEvent {
  const factory NewsTriedAgain() = _$NewsTriedAgainImpl;
}

/// @nodoc
mixin _$NewsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call({BlocStatus status, List<Article> articles});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsStateImplCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$$NewsStateImplCopyWith(
          _$NewsStateImpl value, $Res Function(_$NewsStateImpl) then) =
      __$$NewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<Article> articles});
}

/// @nodoc
class __$$NewsStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsStateImpl>
    implements _$$NewsStateImplCopyWith<$Res> {
  __$$NewsStateImplCopyWithImpl(
      _$NewsStateImpl _value, $Res Function(_$NewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? articles = null,
  }) {
    return _then(_$NewsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$NewsStateImpl extends _NewsState {
  const _$NewsStateImpl(
      {required this.status, final List<Article> articles = const []})
      : _articles = articles,
        super._();

  @override
  final BlocStatus status;
  final List<Article> _articles;
  @override
  @JsonKey()
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      __$$NewsStateImplCopyWithImpl<_$NewsStateImpl>(this, _$identity);
}

abstract class _NewsState extends NewsState {
  const factory _NewsState(
      {required final BlocStatus status,
      final List<Article> articles}) = _$NewsStateImpl;
  const _NewsState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<Article> get articles;
  @override
  @JsonKey(ignore: true)
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
