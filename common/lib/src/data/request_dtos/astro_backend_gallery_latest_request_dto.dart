import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'astro_backend_gallery_latest_request_dto.freezed.dart';
part 'astro_backend_gallery_latest_request_dto.g.dart';

@freezed
class AstroBackendGalleryLatestRequestDto
    with _$AstroBackendGalleryLatestRequestDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AstroBackendGalleryLatestRequestDto({
    required GalleryItemLanguage language,
  }) = _AstroBackendGalleryLatestRequestDto;

  const AstroBackendGalleryLatestRequestDto._();

  factory AstroBackendGalleryLatestRequestDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AstroBackendGalleryLatestRequestDtoFromJson(json);
}
