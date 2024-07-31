// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astro_backend_gallery_items_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AstroBackendGalleryItemsRequestDto _$AstroBackendGalleryItemsRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _AstroBackendGalleryItemsRequestDto.fromJson(json);
}

/// @nodoc
mixin _$AstroBackendGalleryItemsRequestDto {
  Date get startDate => throw _privateConstructorUsedError;
  Date get endDate => throw _privateConstructorUsedError;
  ContentLanguage get language => throw _privateConstructorUsedError;

  /// Serializes this AstroBackendGalleryItemsRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AstroBackendGalleryItemsRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AstroBackendGalleryItemsRequestDtoCopyWith<
          AstroBackendGalleryItemsRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroBackendGalleryItemsRequestDtoCopyWith<$Res> {
  factory $AstroBackendGalleryItemsRequestDtoCopyWith(
          AstroBackendGalleryItemsRequestDto value,
          $Res Function(AstroBackendGalleryItemsRequestDto) then) =
      _$AstroBackendGalleryItemsRequestDtoCopyWithImpl<$Res,
          AstroBackendGalleryItemsRequestDto>;
  @useResult
  $Res call({Date startDate, Date endDate, ContentLanguage language});

  $DateCopyWith<$Res> get startDate;
  $DateCopyWith<$Res> get endDate;
}

/// @nodoc
class _$AstroBackendGalleryItemsRequestDtoCopyWithImpl<$Res,
        $Val extends AstroBackendGalleryItemsRequestDto>
    implements $AstroBackendGalleryItemsRequestDtoCopyWith<$Res> {
  _$AstroBackendGalleryItemsRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AstroBackendGalleryItemsRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
    ) as $Val);
  }

  /// Create a copy of AstroBackendGalleryItemsRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get startDate {
    return $DateCopyWith<$Res>(_value.startDate, (value) {
      return _then(_value.copyWith(startDate: value) as $Val);
    });
  }

  /// Create a copy of AstroBackendGalleryItemsRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res> get endDate {
    return $DateCopyWith<$Res>(_value.endDate, (value) {
      return _then(_value.copyWith(endDate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AstroBackendGalleryItemsRequestDtoImplCopyWith<$Res>
    implements $AstroBackendGalleryItemsRequestDtoCopyWith<$Res> {
  factory _$$AstroBackendGalleryItemsRequestDtoImplCopyWith(
          _$AstroBackendGalleryItemsRequestDtoImpl value,
          $Res Function(_$AstroBackendGalleryItemsRequestDtoImpl) then) =
      __$$AstroBackendGalleryItemsRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Date startDate, Date endDate, ContentLanguage language});

  @override
  $DateCopyWith<$Res> get startDate;
  @override
  $DateCopyWith<$Res> get endDate;
}

/// @nodoc
class __$$AstroBackendGalleryItemsRequestDtoImplCopyWithImpl<$Res>
    extends _$AstroBackendGalleryItemsRequestDtoCopyWithImpl<$Res,
        _$AstroBackendGalleryItemsRequestDtoImpl>
    implements _$$AstroBackendGalleryItemsRequestDtoImplCopyWith<$Res> {
  __$$AstroBackendGalleryItemsRequestDtoImplCopyWithImpl(
      _$AstroBackendGalleryItemsRequestDtoImpl _value,
      $Res Function(_$AstroBackendGalleryItemsRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AstroBackendGalleryItemsRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? language = null,
  }) {
    return _then(_$AstroBackendGalleryItemsRequestDtoImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ContentLanguage,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AstroBackendGalleryItemsRequestDtoImpl
    extends _AstroBackendGalleryItemsRequestDto {
  const _$AstroBackendGalleryItemsRequestDtoImpl(
      {required this.startDate, required this.endDate, required this.language})
      : super._();

  factory _$AstroBackendGalleryItemsRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AstroBackendGalleryItemsRequestDtoImplFromJson(json);

  @override
  final Date startDate;
  @override
  final Date endDate;
  @override
  final ContentLanguage language;

  @override
  String toString() {
    return 'AstroBackendGalleryItemsRequestDto(startDate: $startDate, endDate: $endDate, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstroBackendGalleryItemsRequestDtoImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, language);

  /// Create a copy of AstroBackendGalleryItemsRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroBackendGalleryItemsRequestDtoImplCopyWith<
          _$AstroBackendGalleryItemsRequestDtoImpl>
      get copyWith => __$$AstroBackendGalleryItemsRequestDtoImplCopyWithImpl<
          _$AstroBackendGalleryItemsRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstroBackendGalleryItemsRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _AstroBackendGalleryItemsRequestDto
    extends AstroBackendGalleryItemsRequestDto {
  const factory _AstroBackendGalleryItemsRequestDto(
          {required final Date startDate,
          required final Date endDate,
          required final ContentLanguage language}) =
      _$AstroBackendGalleryItemsRequestDtoImpl;
  const _AstroBackendGalleryItemsRequestDto._() : super._();

  factory _AstroBackendGalleryItemsRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$AstroBackendGalleryItemsRequestDtoImpl.fromJson;

  @override
  Date get startDate;
  @override
  Date get endDate;
  @override
  ContentLanguage get language;

  /// Create a copy of AstroBackendGalleryItemsRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AstroBackendGalleryItemsRequestDtoImplCopyWith<
          _$AstroBackendGalleryItemsRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
