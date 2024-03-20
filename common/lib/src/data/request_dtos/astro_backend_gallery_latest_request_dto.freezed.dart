// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astro_backend_gallery_latest_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AstroBackendGalleryLatestRequestDto
    _$AstroBackendGalleryLatestRequestDtoFromJson(Map<String, dynamic> json) {
  return _AstroBackendGalleryLatestRequestDto.fromJson(json);
}

/// @nodoc
mixin _$AstroBackendGalleryLatestRequestDto {
  ContentLanguage get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstroBackendGalleryLatestRequestDtoCopyWith<
          AstroBackendGalleryLatestRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroBackendGalleryLatestRequestDtoCopyWith<$Res> {
  factory $AstroBackendGalleryLatestRequestDtoCopyWith(
          AstroBackendGalleryLatestRequestDto value,
          $Res Function(AstroBackendGalleryLatestRequestDto) then) =
      _$AstroBackendGalleryLatestRequestDtoCopyWithImpl<$Res,
          AstroBackendGalleryLatestRequestDto>;
  @useResult
  $Res call({ContentLanguage language});
}

/// @nodoc
class _$AstroBackendGalleryLatestRequestDtoCopyWithImpl<$Res,
        $Val extends AstroBackendGalleryLatestRequestDto>
    implements $AstroBackendGalleryLatestRequestDtoCopyWith<$Res> {
  _$AstroBackendGalleryLatestRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AstroBackendGalleryLatestRequestDtoImplCopyWith<$Res>
    implements $AstroBackendGalleryLatestRequestDtoCopyWith<$Res> {
  factory _$$AstroBackendGalleryLatestRequestDtoImplCopyWith(
          _$AstroBackendGalleryLatestRequestDtoImpl value,
          $Res Function(_$AstroBackendGalleryLatestRequestDtoImpl) then) =
      __$$AstroBackendGalleryLatestRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContentLanguage language});
}

/// @nodoc
class __$$AstroBackendGalleryLatestRequestDtoImplCopyWithImpl<$Res>
    extends _$AstroBackendGalleryLatestRequestDtoCopyWithImpl<$Res,
        _$AstroBackendGalleryLatestRequestDtoImpl>
    implements _$$AstroBackendGalleryLatestRequestDtoImplCopyWith<$Res> {
  __$$AstroBackendGalleryLatestRequestDtoImplCopyWithImpl(
      _$AstroBackendGalleryLatestRequestDtoImpl _value,
      $Res Function(_$AstroBackendGalleryLatestRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$AstroBackendGalleryLatestRequestDtoImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AstroBackendGalleryLatestRequestDtoImpl
    extends _AstroBackendGalleryLatestRequestDto {
  const _$AstroBackendGalleryLatestRequestDtoImpl({required this.language})
      : super._();

  factory _$AstroBackendGalleryLatestRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AstroBackendGalleryLatestRequestDtoImplFromJson(json);

  @override
  final ContentLanguage language;

  @override
  String toString() {
    return 'AstroBackendGalleryLatestRequestDto(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstroBackendGalleryLatestRequestDtoImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroBackendGalleryLatestRequestDtoImplCopyWith<
          _$AstroBackendGalleryLatestRequestDtoImpl>
      get copyWith => __$$AstroBackendGalleryLatestRequestDtoImplCopyWithImpl<
          _$AstroBackendGalleryLatestRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstroBackendGalleryLatestRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _AstroBackendGalleryLatestRequestDto
    extends AstroBackendGalleryLatestRequestDto {
  const factory _AstroBackendGalleryLatestRequestDto(
          {required final ContentLanguage language}) =
      _$AstroBackendGalleryLatestRequestDtoImpl;
  const _AstroBackendGalleryLatestRequestDto._() : super._();

  factory _AstroBackendGalleryLatestRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$AstroBackendGalleryLatestRequestDtoImpl.fromJson;

  @override
  ContentLanguage get language;
  @override
  @JsonKey(ignore: true)
  _$$AstroBackendGalleryLatestRequestDtoImplCopyWith<
          _$AstroBackendGalleryLatestRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
