// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_translate_text_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoogleTranslateTextResponseDto _$GoogleTranslateTextResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GoogleTranslateTextResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GoogleTranslateTextResponseDto {
  List<GoogleTextTranslation> get translations =>
      throw _privateConstructorUsedError;

  /// Serializes this GoogleTranslateTextResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoogleTranslateTextResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoogleTranslateTextResponseDtoCopyWith<GoogleTranslateTextResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleTranslateTextResponseDtoCopyWith<$Res> {
  factory $GoogleTranslateTextResponseDtoCopyWith(
          GoogleTranslateTextResponseDto value,
          $Res Function(GoogleTranslateTextResponseDto) then) =
      _$GoogleTranslateTextResponseDtoCopyWithImpl<$Res,
          GoogleTranslateTextResponseDto>;
  @useResult
  $Res call({List<GoogleTextTranslation> translations});
}

/// @nodoc
class _$GoogleTranslateTextResponseDtoCopyWithImpl<$Res,
        $Val extends GoogleTranslateTextResponseDto>
    implements $GoogleTranslateTextResponseDtoCopyWith<$Res> {
  _$GoogleTranslateTextResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleTranslateTextResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
  }) {
    return _then(_value.copyWith(
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<GoogleTextTranslation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleTranslateTextResponseDtoImplCopyWith<$Res>
    implements $GoogleTranslateTextResponseDtoCopyWith<$Res> {
  factory _$$GoogleTranslateTextResponseDtoImplCopyWith(
          _$GoogleTranslateTextResponseDtoImpl value,
          $Res Function(_$GoogleTranslateTextResponseDtoImpl) then) =
      __$$GoogleTranslateTextResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GoogleTextTranslation> translations});
}

/// @nodoc
class __$$GoogleTranslateTextResponseDtoImplCopyWithImpl<$Res>
    extends _$GoogleTranslateTextResponseDtoCopyWithImpl<$Res,
        _$GoogleTranslateTextResponseDtoImpl>
    implements _$$GoogleTranslateTextResponseDtoImplCopyWith<$Res> {
  __$$GoogleTranslateTextResponseDtoImplCopyWithImpl(
      _$GoogleTranslateTextResponseDtoImpl _value,
      $Res Function(_$GoogleTranslateTextResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleTranslateTextResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
  }) {
    return _then(_$GoogleTranslateTextResponseDtoImpl(
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<GoogleTextTranslation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleTranslateTextResponseDtoImpl
    extends _GoogleTranslateTextResponseDto {
  const _$GoogleTranslateTextResponseDtoImpl(
      {required final List<GoogleTextTranslation> translations})
      : _translations = translations,
        super._();

  factory _$GoogleTranslateTextResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GoogleTranslateTextResponseDtoImplFromJson(json);

  final List<GoogleTextTranslation> _translations;
  @override
  List<GoogleTextTranslation> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  @override
  String toString() {
    return 'GoogleTranslateTextResponseDto(translations: $translations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleTranslateTextResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_translations));

  /// Create a copy of GoogleTranslateTextResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleTranslateTextResponseDtoImplCopyWith<
          _$GoogleTranslateTextResponseDtoImpl>
      get copyWith => __$$GoogleTranslateTextResponseDtoImplCopyWithImpl<
          _$GoogleTranslateTextResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleTranslateTextResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GoogleTranslateTextResponseDto
    extends GoogleTranslateTextResponseDto {
  const factory _GoogleTranslateTextResponseDto(
          {required final List<GoogleTextTranslation> translations}) =
      _$GoogleTranslateTextResponseDtoImpl;
  const _GoogleTranslateTextResponseDto._() : super._();

  factory _GoogleTranslateTextResponseDto.fromJson(Map<String, dynamic> json) =
      _$GoogleTranslateTextResponseDtoImpl.fromJson;

  @override
  List<GoogleTextTranslation> get translations;

  /// Create a copy of GoogleTranslateTextResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleTranslateTextResponseDtoImplCopyWith<
          _$GoogleTranslateTextResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GoogleTextTranslation _$GoogleTextTranslationFromJson(
    Map<String, dynamic> json) {
  return _GoogleTextTranslation.fromJson(json);
}

/// @nodoc
mixin _$GoogleTextTranslation {
  String get translatedText => throw _privateConstructorUsedError;
  String? get detectedSourceLanguage => throw _privateConstructorUsedError;

  /// Serializes this GoogleTextTranslation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoogleTextTranslation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoogleTextTranslationCopyWith<GoogleTextTranslation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleTextTranslationCopyWith<$Res> {
  factory $GoogleTextTranslationCopyWith(GoogleTextTranslation value,
          $Res Function(GoogleTextTranslation) then) =
      _$GoogleTextTranslationCopyWithImpl<$Res, GoogleTextTranslation>;
  @useResult
  $Res call({String translatedText, String? detectedSourceLanguage});
}

/// @nodoc
class _$GoogleTextTranslationCopyWithImpl<$Res,
        $Val extends GoogleTextTranslation>
    implements $GoogleTextTranslationCopyWith<$Res> {
  _$GoogleTextTranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleTextTranslation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatedText = null,
    Object? detectedSourceLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
      detectedSourceLanguage: freezed == detectedSourceLanguage
          ? _value.detectedSourceLanguage
          : detectedSourceLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleTextTranslationImplCopyWith<$Res>
    implements $GoogleTextTranslationCopyWith<$Res> {
  factory _$$GoogleTextTranslationImplCopyWith(
          _$GoogleTextTranslationImpl value,
          $Res Function(_$GoogleTextTranslationImpl) then) =
      __$$GoogleTextTranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String translatedText, String? detectedSourceLanguage});
}

/// @nodoc
class __$$GoogleTextTranslationImplCopyWithImpl<$Res>
    extends _$GoogleTextTranslationCopyWithImpl<$Res,
        _$GoogleTextTranslationImpl>
    implements _$$GoogleTextTranslationImplCopyWith<$Res> {
  __$$GoogleTextTranslationImplCopyWithImpl(_$GoogleTextTranslationImpl _value,
      $Res Function(_$GoogleTextTranslationImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleTextTranslation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatedText = null,
    Object? detectedSourceLanguage = freezed,
  }) {
    return _then(_$GoogleTextTranslationImpl(
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
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
class _$GoogleTextTranslationImpl extends _GoogleTextTranslation {
  const _$GoogleTextTranslationImpl(
      {required this.translatedText, this.detectedSourceLanguage})
      : super._();

  factory _$GoogleTextTranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleTextTranslationImplFromJson(json);

  @override
  final String translatedText;
  @override
  final String? detectedSourceLanguage;

  @override
  String toString() {
    return 'GoogleTextTranslation(translatedText: $translatedText, detectedSourceLanguage: $detectedSourceLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleTextTranslationImpl &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText) &&
            (identical(other.detectedSourceLanguage, detectedSourceLanguage) ||
                other.detectedSourceLanguage == detectedSourceLanguage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, translatedText, detectedSourceLanguage);

  /// Create a copy of GoogleTextTranslation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleTextTranslationImplCopyWith<_$GoogleTextTranslationImpl>
      get copyWith => __$$GoogleTextTranslationImplCopyWithImpl<
          _$GoogleTextTranslationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleTextTranslationImplToJson(
      this,
    );
  }
}

abstract class _GoogleTextTranslation extends GoogleTextTranslation {
  const factory _GoogleTextTranslation(
      {required final String translatedText,
      final String? detectedSourceLanguage}) = _$GoogleTextTranslationImpl;
  const _GoogleTextTranslation._() : super._();

  factory _GoogleTextTranslation.fromJson(Map<String, dynamic> json) =
      _$GoogleTextTranslationImpl.fromJson;

  @override
  String get translatedText;
  @override
  String? get detectedSourceLanguage;

  /// Create a copy of GoogleTextTranslation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleTextTranslationImplCopyWith<_$GoogleTextTranslationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
