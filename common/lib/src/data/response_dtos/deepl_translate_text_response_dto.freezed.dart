// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deepl_translate_text_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeepLTranslateTextResponseDto _$DeepLTranslateTextResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _DeepLTranslateTextResponseDto.fromJson(json);
}

/// @nodoc
mixin _$DeepLTranslateTextResponseDto {
  List<DeepLTextTranslation> get translations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeepLTranslateTextResponseDtoCopyWith<DeepLTranslateTextResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepLTranslateTextResponseDtoCopyWith<$Res> {
  factory $DeepLTranslateTextResponseDtoCopyWith(
          DeepLTranslateTextResponseDto value,
          $Res Function(DeepLTranslateTextResponseDto) then) =
      _$DeepLTranslateTextResponseDtoCopyWithImpl<$Res,
          DeepLTranslateTextResponseDto>;
  @useResult
  $Res call({List<DeepLTextTranslation> translations});
}

/// @nodoc
class _$DeepLTranslateTextResponseDtoCopyWithImpl<$Res,
        $Val extends DeepLTranslateTextResponseDto>
    implements $DeepLTranslateTextResponseDtoCopyWith<$Res> {
  _$DeepLTranslateTextResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
  }) {
    return _then(_value.copyWith(
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<DeepLTextTranslation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeepLTranslateTextResponseDtoImplCopyWith<$Res>
    implements $DeepLTranslateTextResponseDtoCopyWith<$Res> {
  factory _$$DeepLTranslateTextResponseDtoImplCopyWith(
          _$DeepLTranslateTextResponseDtoImpl value,
          $Res Function(_$DeepLTranslateTextResponseDtoImpl) then) =
      __$$DeepLTranslateTextResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeepLTextTranslation> translations});
}

/// @nodoc
class __$$DeepLTranslateTextResponseDtoImplCopyWithImpl<$Res>
    extends _$DeepLTranslateTextResponseDtoCopyWithImpl<$Res,
        _$DeepLTranslateTextResponseDtoImpl>
    implements _$$DeepLTranslateTextResponseDtoImplCopyWith<$Res> {
  __$$DeepLTranslateTextResponseDtoImplCopyWithImpl(
      _$DeepLTranslateTextResponseDtoImpl _value,
      $Res Function(_$DeepLTranslateTextResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
  }) {
    return _then(_$DeepLTranslateTextResponseDtoImpl(
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<DeepLTextTranslation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeepLTranslateTextResponseDtoImpl
    extends _DeepLTranslateTextResponseDto {
  const _$DeepLTranslateTextResponseDtoImpl(
      {required final List<DeepLTextTranslation> translations})
      : _translations = translations,
        super._();

  factory _$DeepLTranslateTextResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeepLTranslateTextResponseDtoImplFromJson(json);

  final List<DeepLTextTranslation> _translations;
  @override
  List<DeepLTextTranslation> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  @override
  String toString() {
    return 'DeepLTranslateTextResponseDto(translations: $translations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepLTranslateTextResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_translations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeepLTranslateTextResponseDtoImplCopyWith<
          _$DeepLTranslateTextResponseDtoImpl>
      get copyWith => __$$DeepLTranslateTextResponseDtoImplCopyWithImpl<
          _$DeepLTranslateTextResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeepLTranslateTextResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _DeepLTranslateTextResponseDto
    extends DeepLTranslateTextResponseDto {
  const factory _DeepLTranslateTextResponseDto(
          {required final List<DeepLTextTranslation> translations}) =
      _$DeepLTranslateTextResponseDtoImpl;
  const _DeepLTranslateTextResponseDto._() : super._();

  factory _DeepLTranslateTextResponseDto.fromJson(Map<String, dynamic> json) =
      _$DeepLTranslateTextResponseDtoImpl.fromJson;

  @override
  List<DeepLTextTranslation> get translations;
  @override
  @JsonKey(ignore: true)
  _$$DeepLTranslateTextResponseDtoImplCopyWith<
          _$DeepLTranslateTextResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeepLTextTranslation _$DeepLTextTranslationFromJson(Map<String, dynamic> json) {
  return _DeepLTextTranslation.fromJson(json);
}

/// @nodoc
mixin _$DeepLTextTranslation {
  String get text => throw _privateConstructorUsedError;
  String? get detectedSourceLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeepLTextTranslationCopyWith<DeepLTextTranslation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepLTextTranslationCopyWith<$Res> {
  factory $DeepLTextTranslationCopyWith(DeepLTextTranslation value,
          $Res Function(DeepLTextTranslation) then) =
      _$DeepLTextTranslationCopyWithImpl<$Res, DeepLTextTranslation>;
  @useResult
  $Res call({String text, String? detectedSourceLanguage});
}

/// @nodoc
class _$DeepLTextTranslationCopyWithImpl<$Res,
        $Val extends DeepLTextTranslation>
    implements $DeepLTextTranslationCopyWith<$Res> {
  _$DeepLTextTranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? detectedSourceLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      detectedSourceLanguage: freezed == detectedSourceLanguage
          ? _value.detectedSourceLanguage
          : detectedSourceLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeepLTextTranslationImplCopyWith<$Res>
    implements $DeepLTextTranslationCopyWith<$Res> {
  factory _$$DeepLTextTranslationImplCopyWith(_$DeepLTextTranslationImpl value,
          $Res Function(_$DeepLTextTranslationImpl) then) =
      __$$DeepLTextTranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String? detectedSourceLanguage});
}

/// @nodoc
class __$$DeepLTextTranslationImplCopyWithImpl<$Res>
    extends _$DeepLTextTranslationCopyWithImpl<$Res, _$DeepLTextTranslationImpl>
    implements _$$DeepLTextTranslationImplCopyWith<$Res> {
  __$$DeepLTextTranslationImplCopyWithImpl(_$DeepLTextTranslationImpl _value,
      $Res Function(_$DeepLTextTranslationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? detectedSourceLanguage = freezed,
  }) {
    return _then(_$DeepLTextTranslationImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      detectedSourceLanguage: freezed == detectedSourceLanguage
          ? _value.detectedSourceLanguage
          : detectedSourceLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeepLTextTranslationImpl extends _DeepLTextTranslation {
  const _$DeepLTextTranslationImpl(
      {required this.text, this.detectedSourceLanguage})
      : super._();

  factory _$DeepLTextTranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeepLTextTranslationImplFromJson(json);

  @override
  final String text;
  @override
  final String? detectedSourceLanguage;

  @override
  String toString() {
    return 'DeepLTextTranslation(text: $text, detectedSourceLanguage: $detectedSourceLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepLTextTranslationImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.detectedSourceLanguage, detectedSourceLanguage) ||
                other.detectedSourceLanguage == detectedSourceLanguage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, detectedSourceLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeepLTextTranslationImplCopyWith<_$DeepLTextTranslationImpl>
      get copyWith =>
          __$$DeepLTextTranslationImplCopyWithImpl<_$DeepLTextTranslationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeepLTextTranslationImplToJson(
      this,
    );
  }
}

abstract class _DeepLTextTranslation extends DeepLTextTranslation {
  const factory _DeepLTextTranslation(
      {required final String text,
      final String? detectedSourceLanguage}) = _$DeepLTextTranslationImpl;
  const _DeepLTextTranslation._() : super._();

  factory _DeepLTextTranslation.fromJson(Map<String, dynamic> json) =
      _$DeepLTextTranslationImpl.fromJson;

  @override
  String get text;
  @override
  String? get detectedSourceLanguage;
  @override
  @JsonKey(ignore: true)
  _$$DeepLTextTranslationImplCopyWith<_$DeepLTextTranslationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
