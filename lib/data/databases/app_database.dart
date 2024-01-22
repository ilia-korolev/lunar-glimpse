import 'dart:io';
import 'dart:ui';

import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';
part 'app_database.initial_data.dart';

const _dbPath = 'db.sqlite';

@DataClassName('GalleryEntity')
class GalleryEntities extends Table {
  IntColumn get date => integer().map(const DateConverter())();
  TextColumn get title => text()();
  TextColumn get explanation => text()();
  TextColumn get uri => text().map(const _UriConverter())();
  TextColumn get hdUri => text().map(const _UriConverter())();
  TextColumn get copyright => text().nullable()();
  IntColumn get type => intEnum<GalleryItemType>()();
  BoolColumn get isFavorite => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {date};
}

@DataClassName('WebFeedEntity')
class WebFeedEntities extends Table {
  TextColumn get uri => text().map(const _UriConverter())();
  TextColumn get favicon => text().map(const _UriConverter())();
  TextColumn get locale => text().map(const LocaleConverter())();
  BoolColumn get isHidden => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {uri};
}

@DriftDatabase(
  tables: [
    GalleryEntities,
    WebFeedEntities,
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
            (batch) => batch.insertAll(webFeedEntities, _initialWebFeeds),
          );
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
