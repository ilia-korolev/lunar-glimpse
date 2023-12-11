// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Article {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Uri get uri => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  WebFeed get source => throw _privateConstructorUsedError;
  Uri? get thumbnail => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {String title,
      String description,
      Uri uri,
      DateTime date,
      WebFeed source,
      Uri? thumbnail,
      String? author});

  $WebFeedCopyWith<$Res> get source;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? uri = null,
    Object? date = null,
    Object? source = null,
    Object? thumbnail = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WebFeed,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uri?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WebFeedCopyWith<$Res> get source {
    return $WebFeedCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      Uri uri,
      DateTime date,
      WebFeed source,
      Uri? thumbnail,
      String? author});

  @override
  $WebFeedCopyWith<$Res> get source;
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? uri = null,
    Object? date = null,
    Object? source = null,
    Object? thumbnail = freezed,
    Object? author = freezed,
  }) {
    return _then(_$ArticleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WebFeed,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uri?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ArticleImpl implements _Article {
  const _$ArticleImpl(
      {required this.title,
      required this.description,
      required this.uri,
      required this.date,
      required this.source,
      this.thumbnail,
      this.author});

  @override
  final String title;
  @override
  final String description;
  @override
  final Uri uri;
  @override
  final DateTime date;
  @override
  final WebFeed source;
  @override
  final Uri? thumbnail;
  @override
  final String? author;

  @override
  String toString() {
    return 'Article(title: $title, description: $description, uri: $uri, date: $date, source: $source, thumbnail: $thumbnail, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.author, author) || other.author == author));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, uri, date, source, thumbnail, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);
}

abstract class _Article implements Article {
  const factory _Article(
      {required final String title,
      required final String description,
      required final Uri uri,
      required final DateTime date,
      required final WebFeed source,
      final Uri? thumbnail,
      final String? author}) = _$ArticleImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  Uri get uri;
  @override
  DateTime get date;
  @override
  WebFeed get source;
  @override
  Uri? get thumbnail;
  @override
  String? get author;
  @override
  @JsonKey(ignore: true)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
