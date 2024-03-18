// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_translate_text_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoogleTranslateTextRequestDto _$GoogleTranslateTextRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _GoogleTranslateTextRequestDto.fromJson(json);
}

/// @nodoc
mixin _$GoogleTranslateTextRequestDto {
  @JsonKey(name: 'q')
  List<String> get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  String get sourceLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'target')
  String get targetLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleTranslateTextRequestDtoCopyWith<GoogleTranslateTextRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleTranslateTextRequestDtoCopyWith<$Res> {
  factory $GoogleTranslateTextRequestDtoCopyWith(
          GoogleTranslateTextRequestDto value,
          $Res Function(GoogleTranslateTextRequestDto) then) =
      _$GoogleTranslateTextRequestDtoCopyWithImpl<$Res,
          GoogleTranslateTextRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'q') List<String> source,
      @JsonKey(name: 'source') String sourceLanguage,
      @JsonKey(name: 'target') String targetLanguage});
}

/// @nodoc
class _$GoogleTranslateTextRequestDtoCopyWithImpl<$Res,
        $Val extends GoogleTranslateTextRequestDto>
    implements $GoogleTranslateTextRequestDtoCopyWith<$Res> {
  _$GoogleTranslateTextRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? sourceLanguage = null,
    Object? targetLanguage = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sourceLanguage: null == sourceLanguage
          ? _value.sourceLanguage
          : sourceLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      targetLanguage: null == targetLanguage
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleTranslateTextRequestDtoImplCopyWith<$Res>
    implements $GoogleTranslateTextRequestDtoCopyWith<$Res> {
  factory _$$GoogleTranslateTextRequestDtoImplCopyWith(
          _$GoogleTranslateTextRequestDtoImpl value,
          $Res Function(_$GoogleTranslateTextRequestDtoImpl) then) =
      __$$GoogleTranslateTextRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'q') List<String> source,
      @JsonKey(name: 'source') String sourceLanguage,
      @JsonKey(name: 'target') String targetLanguage});
}

/// @nodoc
class __$$GoogleTranslateTextRequestDtoImplCopyWithImpl<$Res>
    extends _$GoogleTranslateTextRequestDtoCopyWithImpl<$Res,
        _$GoogleTranslateTextRequestDtoImpl>
    implements _$$GoogleTranslateTextRequestDtoImplCopyWith<$Res> {
  __$$GoogleTranslateTextRequestDtoImplCopyWithImpl(
      _$GoogleTranslateTextRequestDtoImpl _value,
      $Res Function(_$GoogleTranslateTextRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? sourceLanguage = null,
    Object? targetLanguage = null,
  }) {
    return _then(_$GoogleTranslateTextRequestDtoImpl(
      source: null == source
          ? _value._source
          : source // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sourceLanguage: null == sourceLanguage
          ? _value.sourceLanguage
          : sourceLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      targetLanguage: null == targetLanguage
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleTranslateTextRequestDtoImpl
    extends _GoogleTranslateTextRequestDto {
  const _$GoogleTranslateTextRequestDtoImpl(
      {@JsonKey(name: 'q') required final List<String> source,
      @JsonKey(name: 'source') required this.sourceLanguage,
      @JsonKey(name: 'target') required this.targetLanguage})
      : _source = source,
        super._();

  factory _$GoogleTranslateTextRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GoogleTranslateTextRequestDtoImplFromJson(json);

  final List<String> _source;
  @override
  @JsonKey(name: 'q')
  List<String> get source {
    if (_source is EqualUnmodifiableListView) return _source;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_source);
  }

  @override
  @JsonKey(name: 'source')
  final String sourceLanguage;
  @override
  @JsonKey(name: 'target')
  final String targetLanguage;

  @override
  String toString() {
    return 'GoogleTranslateTextRequestDto(source: $source, sourceLanguage: $sourceLanguage, targetLanguage: $targetLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleTranslateTextRequestDtoImpl &&
            const DeepCollectionEquality().equals(other._source, _source) &&
            (identical(other.sourceLanguage, sourceLanguage) ||
                other.sourceLanguage == sourceLanguage) &&
            (identical(other.targetLanguage, targetLanguage) ||
                other.targetLanguage == targetLanguage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_source),
      sourceLanguage,
      targetLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleTranslateTextRequestDtoImplCopyWith<
          _$GoogleTranslateTextRequestDtoImpl>
      get copyWith => __$$GoogleTranslateTextRequestDtoImplCopyWithImpl<
          _$GoogleTranslateTextRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleTranslateTextRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _GoogleTranslateTextRequestDto
    extends GoogleTranslateTextRequestDto {
  const factory _GoogleTranslateTextRequestDto(
          {@JsonKey(name: 'q') required final List<String> source,
          @JsonKey(name: 'source') required final String sourceLanguage,
          @JsonKey(name: 'target') required final String targetLanguage}) =
      _$GoogleTranslateTextRequestDtoImpl;
  const _GoogleTranslateTextRequestDto._() : super._();

  factory _GoogleTranslateTextRequestDto.fromJson(Map<String, dynamic> json) =
      _$GoogleTranslateTextRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'q')
  List<String> get source;
  @override
  @JsonKey(name: 'source')
  String get sourceLanguage;
  @override
  @JsonKey(name: 'target')
  String get targetLanguage;
  @override
  @JsonKey(ignore: true)
  _$$GoogleTranslateTextRequestDtoImplCopyWith<
          _$GoogleTranslateTextRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
