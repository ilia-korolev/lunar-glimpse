// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'astro_backend_gallery_items_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstroBackendGalleryItemsRequestDtoImpl
    _$$AstroBackendGalleryItemsRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$AstroBackendGalleryItemsRequestDtoImpl(
          startDate: Date.fromJson(json['start_date'] as String),
          endDate: Date.fromJson(json['end_date'] as String),
        );

Map<String, dynamic> _$$AstroBackendGalleryItemsRequestDtoImplToJson(
        _$AstroBackendGalleryItemsRequestDtoImpl instance) =>
    <String, dynamic>{
      'start_date': instance.startDate.toJson(),
      'end_date': instance.endDate.toJson(),
    };
