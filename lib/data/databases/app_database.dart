import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

const _dbPath = 'db.sqlite';

@DataClassName('DailyMediaEntity')
class DailyMediaEntities extends Table {
  IntColumn get date => integer().map(const DateConverter())();
  TextColumn get title => text()();
  TextColumn get explanation => text()();
  TextColumn get uri => text().map(const _UriConverter())();
  TextColumn get hdUri => text().map(const _UriConverter())();
  TextColumn get copyright => text().nullable()();
  IntColumn get type => intEnum<MediaType>()();
  BoolColumn get isFavorite => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {date};
}

@DriftDatabase(
  tables: [
    DailyMediaEntities,
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
}

class _UriConverter extends TypeConverter<Uri, String> {
  const _UriConverter();

  @override
  Uri fromSql(String fromDb) => Uri.parse(fromDb);

  @override
  String toSql(Uri value) => value.toString();
}
