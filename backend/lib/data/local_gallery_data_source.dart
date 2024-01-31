import 'package:astro_common/astro_common.dart';
import 'package:intl/intl.dart';
import 'package:postgres/postgres.dart';

abstract interface class LocalGalleryDataSource {
  const LocalGalleryDataSource();

  Future<void> cacheItems({
    required List<GalleryItem> galleryItems,
    bool onConflictUpdate = false,
  });

  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
  });
}

class PostgresGalleryDataSource implements LocalGalleryDataSource {
  const PostgresGalleryDataSource({
    required Connection dbConnection,
  }) : _dbConnection = dbConnection;

  final Connection _dbConnection;

  @override
  Future<void> cacheItems({
    required List<GalleryItem> galleryItems,
    bool onConflictUpdate = false,
  }) async {
    if (galleryItems.isEmpty) {
      return;
    }

    final insertValues = galleryItems
        .map(GalleryEntity.fromModel)
        .map((e) => e.toInsertString())
        .join(',');

    await _dbConnection.execute(
      '''
  INSERT INTO gallery (date, uri, hd_uri, title, explanation, copyright, type, language_code)
  VALUES
    $insertValues
  ON CONFLICT DO NOTHING;
''',
    );
  }

  @override
  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
  }) async {
    final result = await _dbConnection.execute(
      '''
  SELECT *
  FROM gallery
  WHERE date >= '${startDate.format('yyyy-MM-dd')}'::date
  AND date <= '${endDate.format('yyyy-MM-dd')}'::date;
''',
    );

    final entities = result.map(
      (r) => GalleryEntity(
        date: r[0]! as DateTime,
        uri: r[1]! as String,
        hdUri: r[2]! as String,
        title: r[3]! as String,
        explanation: r[4]! as String,
        copyright: r[5] as String?,
        type: (r[6]! as UndecodedBytes).asString,
        languageCode: (r[7]! as UndecodedBytes).asString,
      ),
    );

    return entities.map((e) => e.toModel()).toList();
  }
}

class GalleryEntity {
  const GalleryEntity({
    required this.date,
    required this.uri,
    required this.hdUri,
    required this.title,
    required this.explanation,
    required this.copyright,
    required this.type,
    required this.languageCode,
  });

  factory GalleryEntity.fromModel(GalleryItem item) {
    return GalleryEntity(
      date: item.date.toDateTime(),
      uri: item.uri.toString(),
      hdUri: item.hdUri.toString(),
      title: item.title,
      explanation: item.explanation,
      copyright: item.copyright,
      type: item.type.name,
      languageCode: item.languageCode,
    );
  }

  final DateTime date;
  final String uri;
  final String hdUri;
  final String title;
  final String explanation;
  final String? copyright;
  final String type;
  final String languageCode;

  String toInsertString() {
    return '''
  (
    ${date.sqlEscaped},
    ${uri.sqlEscaped},
    ${hdUri.sqlEscaped},
    ${title.sqlEscaped},
    ${explanation.sqlEscaped},
    ${copyright.sqlEscaped},
    ${type.sqlEscaped},
    ${languageCode.sqlEscaped}
  )''';
  }

  GalleryItem toModel() {
    final itemType = _galleryItemTypeEnumMap.containsKey(type)
        ? _galleryItemTypeEnumMap[type]!
        : throw ArgumentError(
            '`$type` is not one of the supported values: '
            '${_galleryItemTypeEnumMap.values.join(', ')}',
          );

    return GalleryItem(
      uri: Uri.parse(uri),
      hdUri: Uri.parse(hdUri),
      date: Date.fromDateTime(dateTime: date),
      title: title,
      explanation: explanation,
      copyright: copyright,
      type: itemType,
      languageCode: languageCode,
    );
  }
}

extension _DateTimeX on DateTime {
  String get sqlEscaped {
    final format = DateFormat('yyyy-MM-dd');

    return "'${format.format(this)}'";
  }
}

extension _StringX on String {
  String get sqlEscaped {
    return "'${trim().replaceAll("'", "''")}'";
  }
}

extension _StringNullX on String? {
  String get sqlEscaped {
    if (this?.isEmpty ?? true) {
      return 'NULL';
    }

    return "'${this!.trim().replaceAll("'", "''")}'";
  }
}

const _galleryItemTypeEnumMap = {
  'video': GalleryItemType.video,
  'image': GalleryItemType.image,
};