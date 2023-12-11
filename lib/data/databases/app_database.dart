import 'dart:io';
import 'dart:ui';

import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:intl/locale.dart' as intl;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';
part 'app_database.initial_data.dart';

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

@DataClassName('WebFeedEntity')
class WebFeedEntities extends Table {
  TextColumn get uri => text().map(const _UriConverter())();
  TextColumn get favicon => text().map(const _UriConverter())();
  TextColumn get locale => text().map(const _LocaleConverter())();
  BoolColumn get isHidden => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {uri};
}

@DriftDatabase(
  tables: [
    DailyMediaEntities,
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

class _LocaleConverter extends TypeConverter<Locale, String> {
  const _LocaleConverter();

  @override
  Locale fromSql(String fromDb) => _tryParseLocale(fromDb);

  @override
  String toSql(Locale value) => value.toString();

  // TODO(ilia-korolev): There is no parser for Locale class,
  // fix it when there is
  // https://github.com/flutter/flutter/issues/55720
  Locale _tryParseLocale(String rawLocale) {
    final intlLocale = intl.Locale.parse(rawLocale);

    return Locale.fromSubtags(
      languageCode: intlLocale.languageCode,
      countryCode: intlLocale.countryCode,
      scriptCode: intlLocale.scriptCode,
    );
  }
}
