// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deepl_translate_text_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeepLTranslateTextRequestDto _$DeepLTranslateTextRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _DeepLTranslateTextRequestDto.fromJson(json);
}

/// @nodoc
mixin _$DeepLTranslateTextRequestDto {
  @JsonKey(name: 'text')
  List<String> get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_lang')
  String get sourceLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_lang')
  String get targetLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeepLTranslateTextRequestDtoCopyWith<DeepLTranslateTextRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepLTranslateTextRequestDtoCopyWith<$Res> {
  factory $DeepLTranslateTextRequestDtoCopyWith(
          DeepLTranslateTextRequestDto value,
          $Res Function(DeepLTranslateTextRequestDto) then) =
      _$DeepLTranslateTextRequestDtoCopyWithImpl<$Res,
          DeepLTranslateTextRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') List<String> source,
      @JsonKey(name: 'source_lang') String sourceLanguage,
      @JsonKey(name: 'target_lang') String targetLanguage});
}

/// @nodoc
class _$DeepLTranslateTextRequestDtoCopyWithImpl<$Res,
        $Val extends DeepLTranslateTextRequestDto>
    implements $DeepLTranslateTextRequestDtoCopyWith<$Res> {
  _$DeepLTranslateTextRequestDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$DeepLTranslateTextRequestDtoImplCopyWith<$Res>
    implements $DeepLTranslateTextRequestDtoCopyWith<$Res> {
  factory _$$DeepLTranslateTextRequestDtoImplCopyWith(
          _$DeepLTranslateTextRequestDtoImpl value,
          $Res Function(_$DeepLTranslateTextRequestDtoImpl) then) =
      __$$DeepLTranslateTextRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') List<String> source,
      @JsonKey(name: 'source_lang') String sourceLanguage,
      @JsonKey(name: 'target_lang') String targetLanguage});
}

/// @nodoc
class __$$DeepLTranslateTextRequestDtoImplCopyWithImpl<$Res>
    extends _$DeepLTranslateTextRequestDtoCopyWithImpl<$Res,
        _$DeepLTranslateTextRequestDtoImpl>
    implements _$$DeepLTranslateTextRequestDtoImplCopyWith<$Res> {
  __$$DeepLTranslateTextRequestDtoImplCopyWithImpl(
      _$DeepLTranslateTextRequestDtoImpl _value,
      $Res Function(_$DeepLTranslateTextRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? sourceLanguage = null,
    Object? targetLanguage = null,
  }) {
    return _then(_$DeepLTranslateTextRequestDtoImpl(
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
class _$DeepLTranslateTextRequestDtoImpl extends _DeepLTranslateTextRequestDto {
  const _$DeepLTranslateTextRequestDtoImpl(
      {@JsonKey(name: 'text') required final List<String> source,
      @JsonKey(name: 'source_lang') required this.sourceLanguage,
      @JsonKey(name: 'target_lang') required this.targetLanguage})
      : _source = source,
        super._();

  factory _$DeepLTranslateTextRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeepLTranslateTextRequestDtoImplFromJson(json);

  final List<String> _source;
  @override
  @JsonKey(name: 'text')
  List<String> get source {
    if (_source is EqualUnmodifiableListView) return _source;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_source);
  }

  @override
  @JsonKey(name: 'source_lang')
  final String sourceLanguage;
  @override
  @JsonKey(name: 'target_lang')
  final String targetLanguage;

  @override
  String toString() {
    return 'DeepLTranslateTextRequestDto(source: $source, sourceLanguage: $sourceLanguage, targetLanguage: $targetLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepLTranslateTextRequestDtoImpl &&
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
  _$$DeepLTranslateTextRequestDtoImplCopyWith<
          _$DeepLTranslateTextRequestDtoImpl>
      get copyWith => __$$DeepLTranslateTextRequestDtoImplCopyWithImpl<
          _$DeepLTranslateTextRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeepLTranslateTextRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _DeepLTranslateTextRequestDto
    extends DeepLTranslateTextRequestDto {
  const factory _DeepLTranslateTextRequestDto(
          {@JsonKey(name: 'text') required final List<String> source,
          @JsonKey(name: 'source_lang') required final String sourceLanguage,
          @JsonKey(name: 'target_lang') required final String targetLanguage}) =
      _$DeepLTranslateTextRequestDtoImpl;
  const _DeepLTranslateTextRequestDto._() : super._();

  factory _DeepLTranslateTextRequestDto.fromJson(Map<String, dynamic> json) =
      _$DeepLTranslateTextRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  List<String> get source;
  @override
  @JsonKey(name: 'source_lang')
  String get sourceLanguage;
  @override
  @JsonKey(name: 'target_lang')
  String get targetLanguage;
  @override
  @JsonKey(ignore: true)
  _$$DeepLTranslateTextRequestDtoImplCopyWith<
          _$DeepLTranslateTextRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
