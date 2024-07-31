import 'package:astro_common/astro_common.dart';
import 'package:drift/drift.dart';
import 'package:frontend/data/_export.dart';
import 'connection/_export.dart' as impl;

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    GalleryBaseEntities,
    GalleryImageEntities,
    GalleryVideoEntities,
    GalleryOtherEntities,
    GalleryEmptyEntities,
    GalleryInfoEntities,
    NewsSourceEntities,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(impl.connect());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
        onUpgrade: (Migrator m, int from, int to) async {
          if (from < 2) {
            for (final entity in allSchemaEntities) {
              await m.drop(entity);
            }

            await m.createAll();
          }
        },
      );
}
