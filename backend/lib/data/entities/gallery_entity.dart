import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:postgres/postgres.dart';

class GalleryEntity {
  const GalleryEntity({
    required this.date,
    required this.uri,
    required this.hdUri,
    required this.copyright,
    required this.type,
    required this.language,
    required this.originalLanguage,
    required this.title,
    required this.explanation,
  });

  factory GalleryEntity.fromModel({
    required GalleryItem model,
  }) {
    return GalleryEntity(
      date: model.date.toDateTime(),
      uri: model.uri.toString(),
      hdUri: model.hdUri.toString(),
      copyright: model.copyright,
      type: model.type.name,
      language: model.language.name,
      originalLanguage: model.originalLanguage.name,
      title: model.title,
      explanation: model.explanation,
    );
  }

  factory GalleryEntity.fromQueryResult({
    required ResultRow queryResult,
  }) {
    return GalleryEntity(
      date: queryResult[0]! as DateTime,
      uri: queryResult[1]! as String,
      hdUri: queryResult[2]! as String,
      copyright: queryResult[3] as String?,
      type: queryResult[4]! as String,
      language: queryResult[5]! as String,
      originalLanguage: queryResult[6]! as String,
      title: queryResult[7]! as String,
      explanation: queryResult[8]! as String,
    );
  }

  final DateTime date;
  final String uri;
  final String hdUri;
  final String? copyright;
  final String type;
  final String language;
  final String originalLanguage;
  final String title;
  final String explanation;

  String toGalleryInsertString() {
    return '''
    (
      ${date.sqlEscaped},
      ${uri.sqlEscaped},
      ${hdUri.sqlEscaped},
      ${copyright.sqlEscaped},
      ${type.sqlEscaped}
    )''';
  }

  String toGalleryTranslationsInsertString() {
    return '''
    (
      ${date.sqlEscaped},
      ${language.sqlEscaped},
      ${originalLanguage.sqlEscaped},
      ${title.sqlEscaped},
      ${explanation.sqlEscaped}
    )''';
  }

  GalleryItem toModel() {
    return GalleryItem(
      date: Date.fromDateTime(dateTime: date),
      uri: Uri.parse(uri),
      hdUri: Uri.parse(hdUri),
      copyright: copyright,
      type: _galleryItemTypeEnumMap[type]!,
      isFavorite: false,
      language: _galleryItemLanguageEnumMap[language]!,
      originalLanguage: _galleryItemLanguageEnumMap[originalLanguage]!,
      title: title,
      explanation: explanation,
    );
  }
}

const _galleryItemTypeEnumMap = {
  'video': GalleryItemType.video,
  'image': GalleryItemType.image,
  'other': GalleryItemType.other,
  'empty': GalleryItemType.empty,
};

const _galleryItemLanguageEnumMap = {
  'english': ContentLanguage.english,
  'japanese': ContentLanguage.japanese,
  'russian': ContentLanguage.russian,
  'chinese': ContentLanguage.chinese,
};
