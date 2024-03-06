import 'dart:io';
import 'dart:ui';

import 'package:astro_common/astro_common.dart';
import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutter_astronomy/data/_export.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';
part 'app_database.initial_data.dart';

const _dbPath = 'db.sqlite';

@DataClassName('GalleryEntity')
class Gallery extends Table {
  IntColumn get date => integer().map(const DateConverter())();
  TextColumn get uri => text().map(const _UriConverter())();
  TextColumn get hdUri => text().map(const _UriConverter())();
  TextColumn get copyright => text().nullable()();
  TextColumn get type => textEnum<GalleryItemType>()();
  BoolColumn get isFavorite => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {date};
}

@DataClassName('GalleryTranslationEntity')
class GalleryTranslations extends Table {
  IntColumn get date =>
      integer().map(const DateConverter()).references(Gallery, #date)();
  TextColumn get language => textEnum<GalleryItemLanguage>()();
  TextColumn get originalLanguage => textEnum<GalleryItemLanguage>()();
  TextColumn get title => text()();
  TextColumn get explanation => text()();

  @override
  Set<Column<Object>>? get primaryKey => {date, language};
}

@DataClassName('NewsSourceEntity')
class NewsSourceEntities extends Table {
  TextColumn get uri => text().map(const _UriConverter())();
  TextColumn get favicon => text().map(const _UriConverter())();
  TextColumn get locale => text().map(const LocaleConverter())();
  BoolColumn get isShown => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {uri};
}

@DriftDatabase(
  tables: [
    Gallery,
    GalleryTranslations,
    NewsSourceEntities,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.queryExecutor) : super();

  static Future<DriftIsolate> createDriftIsolate() async {
    final token = RootIsolateToken.instance;

    return DriftIsolate.spawn(() {
      if (token != null) {
        BackgroundIsolateBinaryMessenger.ensureInitialized(token);
      }

      return LazyDatabase(() async {
        final dbFolder = await getApplicationDocumentsDirectory();
        final dbPath = path.join(dbFolder.path, _dbPath);

        return NativeDatabase(File(dbPath));
      });
    });
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator migrator) async {
          await migrator.createAll();

          await batch(
            (batch) => batch.insertAll(newsSourceEntities, _initialNewsSources),
          );
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}

class _UriConverter extends TypeConverter<Uri, String> {
  const _UriConverter();

  @override
  Uri fromSql(String fromDb) => Uri.parse(fromDb);

  @override
  String toSql(Uri value) => value.toString();
}
