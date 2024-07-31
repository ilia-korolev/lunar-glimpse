import 'dart:convert';

import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:csv/csv.dart';

const _newsSourcesUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/news_sources.csv';
const _galleryBaseUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/gallery_base.csv';
const _galleryImagesUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/gallery_images.csv';
const _galleryVideoUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/gallery_videos.csv';
const _galleryOthersUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/gallery_others.csv';
const _galleryEmptyUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/gallery_empty.csv';
const _galleryInfoEnUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/gallery_info_en.csv';
const _galleryInfoJaUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/gallery_info_ja.csv';
const _galleryInfoRuUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/gallery_info_ru.csv';
const _galleryInfoZhUri =
    'https://raw.githubusercontent.com/ilia-korolev/lunar-glimpse-data/master/gallery_info_zh.csv';

class DatabaseInitializer {
  DatabaseInitializer({
    required RemoteDownloadFileDataSource remoteDownloadFileDataSource,
    required CsvToListConverter csvToListConverter,
  })  : _remoteDownloadFileDataSource = remoteDownloadFileDataSource,
        _csvToListConverter = csvToListConverter;

  final RemoteDownloadFileDataSource _remoteDownloadFileDataSource;
  final CsvToListConverter _csvToListConverter;

  Future<void> populate({required AppDatabase database}) async {
    await _populateGalleryBaseEntities(database);
    await _populateGalleryDetailedImageEntities(database);
    await _populateGalleryVideoEntities(database);
    await _populateGalleryOtherEntities(database);
    await _populateGalleryEmptyEntities(database);

    await _populateGalleryInfoEntitiesEn(database);
    await _populateGalleryInfoEntitiesJa(database);
    await _populateGalleryInfoEntitiesRu(database);
    await _populateGalleryInfoEntitiesZh(database);

    await _populateNewsSourceEntities(database);
  }

  Future<void> _populateNewsSourceEntities(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_newsSourcesUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.newsSourceEntities,
          csvRows.map(
            (r) => NewsSourceEntity(
              uri: Uri.parse(r[0]),
              iconUri: Uri.parse(r[1]),
              language: ContentLanguage.fromString(r[2]),
            ),
          ),
        );
      },
    );
  }

  Future<void> _populateGalleryBaseEntities(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_galleryBaseUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.galleryBaseEntities,
          csvRows.map(
            (r) => GalleryBaseEntity(
              date: Date.parse(r[0]),
              copyright: r[1].isNotEmpty ? r[1] : null,
              type: GalleryItemType.fromString(r[2]),
            ),
          ),
        );
      },
    );
  }

  Future<void> _populateGalleryDetailedImageEntities(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_galleryImagesUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.galleryImageEntities,
          csvRows.map(
            (r) => GalleryImageEntity(
              date: Date.parse(r[0]),
              uri: Uri.parse(r[1]),
              hdUri: Uri.parse(r[2]),
              thumbUri: Uri.parse(r[3]),
              aspectRatio: double.parse(r[4]),
              aspectRatioThumb: double.parse(r[5]),
              blurHash: r[6],
              blurHashThumb: r[7],
            ),
          ),
        );
      },
    );
  }

  Future<void> _populateGalleryVideoEntities(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_galleryVideoUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.galleryVideoEntities,
          csvRows.map(
            (r) => GalleryVideoEntity(
              date: Date.parse(r[0]),
              uri: Uri.parse(r[1]),
            ),
          ),
        );
      },
    );
  }

  Future<void> _populateGalleryOtherEntities(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_galleryOthersUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.galleryOtherEntities,
          csvRows.map(
            (r) => GalleryOtherEntity(
              date: Date.parse(r[0]),
              uri: Uri.parse(r[1]),
            ),
          ),
        );
      },
    );
  }

  Future<void> _populateGalleryEmptyEntities(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_galleryEmptyUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.galleryEmptyEntities,
          csvRows.map(
            (r) => GalleryEmptyEntity(
              date: Date.parse(r[0]),
            ),
          ),
        );
      },
    );
  }

  Future<void> _populateGalleryInfoEntitiesEn(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_galleryInfoEnUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.galleryInfoEntities,
          csvRows.map(
            (r) => GalleryInfoEntity(
              date: Date.parse(r[0]),
              language: ContentLanguage.fromString(r[1]),
              originalLanguage: ContentLanguage.fromString(r[2]),
              title: r[3],
              explanation: r[4],
            ),
          ),
        );
      },
    );
  }

  Future<void> _populateGalleryInfoEntitiesJa(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_galleryInfoJaUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.galleryInfoEntities,
          csvRows.map(
            (r) => GalleryInfoEntity(
              date: Date.parse(r[0]),
              language: ContentLanguage.fromString(r[1]),
              originalLanguage: ContentLanguage.fromString(r[2]),
              title: r[3],
              explanation: r[4],
            ),
          ),
        );
      },
    );
  }

  Future<void> _populateGalleryInfoEntitiesRu(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_galleryInfoRuUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.galleryInfoEntities,
          csvRows.map(
            (r) => GalleryInfoEntity(
              date: Date.parse(r[0]),
              language: ContentLanguage.fromString(r[1]),
              originalLanguage: ContentLanguage.fromString(r[2]),
              title: r[3],
              explanation: r[4],
            ),
          ),
        );
      },
    );
  }

  Future<void> _populateGalleryInfoEntitiesZh(
    AppDatabase database,
  ) async {
    final csvRows = await _downloadCsv(Uri.parse(_galleryInfoZhUri));

    await database.batch(
      (batch) {
        batch.insertAll(
          database.galleryInfoEntities,
          csvRows.map(
            (r) => GalleryInfoEntity(
              date: Date.parse(r[0]),
              language: ContentLanguage.fromString(r[1]),
              originalLanguage: ContentLanguage.fromString(r[2]),
              title: r[3],
              explanation: r[4],
            ),
          ),
        );
      },
    );
  }

  Future<List<List<String>>> _downloadCsv(Uri uri) async {
    final fileBytes = await _remoteDownloadFileDataSource
        .downloadFile(
          fileUri: uri,
        )
        .bytes;

    final decodedData = utf8.decode(fileBytes);

    final rows = _csvToListConverter
        .convert<String>(
          decodedData,
          shouldParseNumbers: false,
        )
        .skip(1)
        .toList();
    return rows;
  }
}
