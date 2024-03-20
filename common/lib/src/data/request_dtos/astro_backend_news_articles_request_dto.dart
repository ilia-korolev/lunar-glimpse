import 'package:freezed_annotation/freezed_annotation.dart';

part 'astro_backend_news_articles_request_dto.freezed.dart';
part 'astro_backend_news_articles_request_dto.g.dart';

@freezed
class AstroBackendNewsArticlesRequestDto
    with _$AstroBackendNewsArticlesRequestDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AstroBackendNewsArticlesRequestDto({
    required Uri sourceUri,
  }) = _AstroBackendNewsArticlesRequestDto;

  const AstroBackendNewsArticlesRequestDto._();

  factory AstroBackendNewsArticlesRequestDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AstroBackendNewsArticlesRequestDtoFromJson(json);
}
