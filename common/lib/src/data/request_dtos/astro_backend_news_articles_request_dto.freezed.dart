// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astro_backend_news_articles_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AstroBackendNewsArticlesRequestDto _$AstroBackendNewsArticlesRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _AstroBackendNewsArticlesRequestDto.fromJson(json);
}

/// @nodoc
mixin _$AstroBackendNewsArticlesRequestDto {
  Uri get sourceUri => throw _privateConstructorUsedError;

  /// Serializes this AstroBackendNewsArticlesRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AstroBackendNewsArticlesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AstroBackendNewsArticlesRequestDtoCopyWith<
          AstroBackendNewsArticlesRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroBackendNewsArticlesRequestDtoCopyWith<$Res> {
  factory $AstroBackendNewsArticlesRequestDtoCopyWith(
          AstroBackendNewsArticlesRequestDto value,
          $Res Function(AstroBackendNewsArticlesRequestDto) then) =
      _$AstroBackendNewsArticlesRequestDtoCopyWithImpl<$Res,
          AstroBackendNewsArticlesRequestDto>;
  @useResult
  $Res call({Uri sourceUri});
}

/// @nodoc
class _$AstroBackendNewsArticlesRequestDtoCopyWithImpl<$Res,
        $Val extends AstroBackendNewsArticlesRequestDto>
    implements $AstroBackendNewsArticlesRequestDtoCopyWith<$Res> {
  _$AstroBackendNewsArticlesRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AstroBackendNewsArticlesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceUri = null,
  }) {
    return _then(_value.copyWith(
      sourceUri: null == sourceUri
          ? _value.sourceUri
          : sourceUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AstroBackendNewsArticlesRequestDtoImplCopyWith<$Res>
    implements $AstroBackendNewsArticlesRequestDtoCopyWith<$Res> {
  factory _$$AstroBackendNewsArticlesRequestDtoImplCopyWith(
          _$AstroBackendNewsArticlesRequestDtoImpl value,
          $Res Function(_$AstroBackendNewsArticlesRequestDtoImpl) then) =
      __$$AstroBackendNewsArticlesRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri sourceUri});
}

/// @nodoc
class __$$AstroBackendNewsArticlesRequestDtoImplCopyWithImpl<$Res>
    extends _$AstroBackendNewsArticlesRequestDtoCopyWithImpl<$Res,
        _$AstroBackendNewsArticlesRequestDtoImpl>
    implements _$$AstroBackendNewsArticlesRequestDtoImplCopyWith<$Res> {
  __$$AstroBackendNewsArticlesRequestDtoImplCopyWithImpl(
      _$AstroBackendNewsArticlesRequestDtoImpl _value,
      $Res Function(_$AstroBackendNewsArticlesRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AstroBackendNewsArticlesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceUri = null,
  }) {
    return _then(_$AstroBackendNewsArticlesRequestDtoImpl(
      sourceUri: null == sourceUri
          ? _value.sourceUri
          : sourceUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AstroBackendNewsArticlesRequestDtoImpl
    extends _AstroBackendNewsArticlesRequestDto {
  const _$AstroBackendNewsArticlesRequestDtoImpl({required this.sourceUri})
      : super._();

  factory _$AstroBackendNewsArticlesRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AstroBackendNewsArticlesRequestDtoImplFromJson(json);

  @override
  final Uri sourceUri;

  @override
  String toString() {
    return 'AstroBackendNewsArticlesRequestDto(sourceUri: $sourceUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstroBackendNewsArticlesRequestDtoImpl &&
            (identical(other.sourceUri, sourceUri) ||
                other.sourceUri == sourceUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sourceUri);

  /// Create a copy of AstroBackendNewsArticlesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroBackendNewsArticlesRequestDtoImplCopyWith<
          _$AstroBackendNewsArticlesRequestDtoImpl>
      get copyWith => __$$AstroBackendNewsArticlesRequestDtoImplCopyWithImpl<
          _$AstroBackendNewsArticlesRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstroBackendNewsArticlesRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _AstroBackendNewsArticlesRequestDto
    extends AstroBackendNewsArticlesRequestDto {
  const factory _AstroBackendNewsArticlesRequestDto(
          {required final Uri sourceUri}) =
      _$AstroBackendNewsArticlesRequestDtoImpl;
  const _AstroBackendNewsArticlesRequestDto._() : super._();

  factory _AstroBackendNewsArticlesRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$AstroBackendNewsArticlesRequestDtoImpl.fromJson;

  @override
  Uri get sourceUri;

  /// Create a copy of AstroBackendNewsArticlesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AstroBackendNewsArticlesRequestDtoImplCopyWith<
          _$AstroBackendNewsArticlesRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
