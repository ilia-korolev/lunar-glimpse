import 'package:astro_common/astro_common.dart';
import 'package:drift/drift.dart';

@DataClassName('GalleryBaseEntity')
class GalleryBaseEntities extends Table {
  IntColumn get date => integer().map(const DateConverter())();
  TextColumn get copyright => text().nullable()();
  TextColumn get type => textEnum<GalleryItemType>()();

  @override
  Set<Column<Object>>? get primaryKey => {date};
}

@DataClassName('GalleryImageEntity')
class GalleryImageEntities extends Table {
  IntColumn get date => integer()
      .map(const DateConverter())
      .references(GalleryBaseEntities, #date)();
  TextColumn get uri => text().map(const UriConverter())();
  TextColumn get hdUri => text().map(const UriConverter())();
  TextColumn get thumbUri => text().map(const UriConverter())();
  RealColumn get aspectRatio => real()();
  RealColumn get aspectRatioThumb => real()();
  TextColumn get blurHash => text()();
  TextColumn get blurHashThumb => text()();

  @override
  Set<Column<Object>>? get primaryKey => {date};
}

@DataClassName('GalleryVideoEntity')
class GalleryVideoEntities extends Table {
  IntColumn get date => integer()
      .map(const DateConverter())
      .references(GalleryBaseEntities, #date)();
  TextColumn get uri => text().map(const UriConverter())();

  @override
  Set<Column<Object>>? get primaryKey => {date};
}

@DataClassName('GalleryOtherEntity')
class GalleryOtherEntities extends Table {
  IntColumn get date => integer()
      .map(const DateConverter())
      .references(GalleryBaseEntities, #date)();
  TextColumn get uri => text().map(const UriConverter())();

  @override
  Set<Column<Object>>? get primaryKey => {date};
}

@DataClassName('GalleryEmptyEntity')
class GalleryEmptyEntities extends Table {
  IntColumn get date => integer()
      .map(const DateConverter())
      .references(GalleryBaseEntities, #date)();

  @override
  Set<Column<Object>>? get primaryKey => {date};
}

@DataClassName('GalleryInfoEntity')
class GalleryInfoEntities extends Table {
  IntColumn get date => integer()
      .map(const DateConverter())
      .references(GalleryBaseEntities, #date)();
  TextColumn get language => textEnum<ContentLanguage>()();
  TextColumn get originalLanguage => textEnum<ContentLanguage>()();
  TextColumn get title => text()();
  TextColumn get explanation => text()();

  @override
  Set<Column<Object>>? get primaryKey => {date, language};
}

@DataClassName('NewsSourceEntity')
class NewsSourceEntities extends Table {
  TextColumn get uri => text().map(const UriConverter())();
  TextColumn get iconUri => text().map(const UriConverter())();
  TextColumn get language => textEnum<ContentLanguage>()();

  @override
  Set<Column<Object>>? get primaryKey => {uri};
}
