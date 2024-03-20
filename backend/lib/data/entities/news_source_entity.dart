import 'package:astro_common/astro_common.dart';
import 'package:postgres/postgres.dart';

class NewsSourceEntity {
  const NewsSourceEntity({
    required this.uri,
    required this.iconUri,
    required this.language,
  });

  factory NewsSourceEntity.fromModel({
    required NewsSource model,
  }) {
    return NewsSourceEntity(
      uri: model.uri.toString(),
      iconUri: model.iconUri.toString(),
      language: model.language.name,
    );
  }

  factory NewsSourceEntity.fromQueryResult({
    required ResultRow queryResult,
  }) {
    return NewsSourceEntity(
      uri: queryResult[0]! as String,
      iconUri: queryResult[1]! as String,
      language: queryResult[2]! as String,
    );
  }

  final String uri;
  final String iconUri;
  final String language;

  NewsSource toModel() {
    return NewsSource(
      uri: Uri.parse(uri),
      iconUri: Uri.parse(iconUri),
      language: ContentLanguage.fromString(language),
      isShown: false,
    );
  }
}
