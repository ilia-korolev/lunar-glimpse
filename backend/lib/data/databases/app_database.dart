import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart' as pg;

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
  AppDatabase({
    required pg.Session pgSession,
    required DatabaseInitializer initializer,
  })  : _initializer = initializer,
        super(_openConnection(pgSession: pgSession));

  final DatabaseInitializer _initializer;

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();

        await _initializer.populate(database: this);
      },
    );
  }

  static QueryExecutor _openConnection({
    required pg.Session pgSession,
  }) {
    return PgDatabase.opened(pgSession);
  }
}
