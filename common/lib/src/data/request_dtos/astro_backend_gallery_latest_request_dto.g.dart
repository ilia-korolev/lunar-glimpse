// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'astro_backend_gallery_latest_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstroBackendGalleryLatestRequestDtoImpl
    _$$AstroBackendGalleryLatestRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$AstroBackendGalleryLatestRequestDtoImpl(
          language: $enumDecode(_$ContentLanguageEnumMap, json['language']),
        );

Map<String, dynamic> _$$AstroBackendGalleryLatestRequestDtoImplToJson(
        _$AstroBackendGalleryLatestRequestDtoImpl instance) =>
    <String, dynamic>{
      'language': _$ContentLanguageEnumMap[instance.language]!,
    };

const _$ContentLanguageEnumMap = {
  ContentLanguage.english: 'english',
  ContentLanguage.japanese: 'japanese',
  ContentLanguage.russian: 'russian',
  ContentLanguage.chinese: 'chinese',
};
