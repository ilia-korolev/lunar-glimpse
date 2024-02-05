import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'astro_backend_gallery_items_request_dto.freezed.dart';
part 'astro_backend_gallery_items_request_dto.g.dart';

@freezed
class AstroBackendGalleryItemsRequestDto
    with _$AstroBackendGalleryItemsRequestDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AstroBackendGalleryItemsRequestDto({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  }) = _AstroBackendGalleryItemsRequestDto;

  const AstroBackendGalleryItemsRequestDto._();

  factory AstroBackendGalleryItemsRequestDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AstroBackendGalleryItemsRequestDtoFromJson(json);
}
