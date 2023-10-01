// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'app_database.dart';

// ignore_for_file: type=lint
class $DailyMediaEntitiesTable extends DailyMediaEntities
    with TableInfo<$DailyMediaEntitiesTable, DailyMediaEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailyMediaEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumnWithTypeConverter<Date, int> date =
      GeneratedColumn<int>('date', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<Date>($DailyMediaEntitiesTable.$converterdate);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _explanationMeta =
      const VerificationMeta('explanation');
  @override
  late final GeneratedColumn<String> explanation = GeneratedColumn<String>(
      'explanation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _uriMeta = const VerificationMeta('uri');
  @override
  late final GeneratedColumnWithTypeConverter<Uri, String> uri =
      GeneratedColumn<String>('uri', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Uri>($DailyMediaEntitiesTable.$converteruri);
  static const VerificationMeta _hdUriMeta = const VerificationMeta('hdUri');
  @override
  late final GeneratedColumnWithTypeConverter<Uri, String> hdUri =
      GeneratedColumn<String>('hd_uri', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Uri>($DailyMediaEntitiesTable.$converterhdUri);
  static const VerificationMeta _copyrightMeta =
      const VerificationMeta('copyright');
  @override
  late final GeneratedColumn<String> copyright = GeneratedColumn<String>(
      'copyright', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<MediaType, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<MediaType>($DailyMediaEntitiesTable.$convertertype);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_favorite" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns =>
      [date, title, explanation, uri, hdUri, copyright, type, isFavorite];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'daily_media_entities';
  @override
  VerificationContext validateIntegrity(Insertable<DailyMediaEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_dateMeta, const VerificationResult.success());
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('explanation')) {
      context.handle(
          _explanationMeta,
          explanation.isAcceptableOrUnknown(
              data['explanation']!, _explanationMeta));
    } else if (isInserting) {
      context.missing(_explanationMeta);
    }
    context.handle(_uriMeta, const VerificationResult.success());
    context.handle(_hdUriMeta, const VerificationResult.success());
    if (data.containsKey('copyright')) {
      context.handle(_copyrightMeta,
          copyright.isAcceptableOrUnknown(data['copyright']!, _copyrightMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    } else if (isInserting) {
      context.missing(_isFavoriteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {date};
  @override
  DailyMediaEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DailyMediaEntity(
      date: $DailyMediaEntitiesTable.$converterdate.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date'])!),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      explanation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}explanation'])!,
      uri: $DailyMediaEntitiesTable.$converteruri.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uri'])!),
      hdUri: $DailyMediaEntitiesTable.$converterhdUri.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hd_uri'])!),
      copyright: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}copyright']),
      type: $DailyMediaEntitiesTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
    );
  }

  @override
  $DailyMediaEntitiesTable createAlias(String alias) {
    return $DailyMediaEntitiesTable(attachedDatabase, alias);
  }

  static TypeConverter<Date, int> $converterdate = const DateConverter();
  static TypeConverter<Uri, String> $converteruri = const _UriConverter();
  static TypeConverter<Uri, String> $converterhdUri = const _UriConverter();
  static JsonTypeConverter2<MediaType, int, int> $convertertype =
      const EnumIndexConverter<MediaType>(MediaType.values);
}

class DailyMediaEntity extends DataClass
    implements Insertable<DailyMediaEntity> {
  final Date date;
  final String title;
  final String explanation;
  final Uri uri;
  final Uri hdUri;
  final String? copyright;
  final MediaType type;
  final bool isFavorite;
  const DailyMediaEntity(
      {required this.date,
      required this.title,
      required this.explanation,
      required this.uri,
      required this.hdUri,
      this.copyright,
      required this.type,
      required this.isFavorite});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      final converter = $DailyMediaEntitiesTable.$converterdate;
      map['date'] = Variable<int>(converter.toSql(date));
    }
    map['title'] = Variable<String>(title);
    map['explanation'] = Variable<String>(explanation);
    {
      final converter = $DailyMediaEntitiesTable.$converteruri;
      map['uri'] = Variable<String>(converter.toSql(uri));
    }
    {
      final converter = $DailyMediaEntitiesTable.$converterhdUri;
      map['hd_uri'] = Variable<String>(converter.toSql(hdUri));
    }
    if (!nullToAbsent || copyright != null) {
      map['copyright'] = Variable<String>(copyright);
    }
    {
      final converter = $DailyMediaEntitiesTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type));
    }
    map['is_favorite'] = Variable<bool>(isFavorite);
    return map;
  }

  DailyMediaEntitiesCompanion toCompanion(bool nullToAbsent) {
    return DailyMediaEntitiesCompanion(
      date: Value(date),
      title: Value(title),
      explanation: Value(explanation),
      uri: Value(uri),
      hdUri: Value(hdUri),
      copyright: copyright == null && nullToAbsent
          ? const Value.absent()
          : Value(copyright),
      type: Value(type),
      isFavorite: Value(isFavorite),
    );
  }

  factory DailyMediaEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyMediaEntity(
      date: serializer.fromJson<Date>(json['date']),
      title: serializer.fromJson<String>(json['title']),
      explanation: serializer.fromJson<String>(json['explanation']),
      uri: serializer.fromJson<Uri>(json['uri']),
      hdUri: serializer.fromJson<Uri>(json['hdUri']),
      copyright: serializer.fromJson<String?>(json['copyright']),
      type: $DailyMediaEntitiesTable.$convertertype
          .fromJson(serializer.fromJson<int>(json['type'])),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<Date>(date),
      'title': serializer.toJson<String>(title),
      'explanation': serializer.toJson<String>(explanation),
      'uri': serializer.toJson<Uri>(uri),
      'hdUri': serializer.toJson<Uri>(hdUri),
      'copyright': serializer.toJson<String?>(copyright),
      'type': serializer
          .toJson<int>($DailyMediaEntitiesTable.$convertertype.toJson(type)),
      'isFavorite': serializer.toJson<bool>(isFavorite),
    };
  }

  DailyMediaEntity copyWith(
          {Date? date,
          String? title,
          String? explanation,
          Uri? uri,
          Uri? hdUri,
          Value<String?> copyright = const Value.absent(),
          MediaType? type,
          bool? isFavorite}) =>
      DailyMediaEntity(
        date: date ?? this.date,
        title: title ?? this.title,
        explanation: explanation ?? this.explanation,
        uri: uri ?? this.uri,
        hdUri: hdUri ?? this.hdUri,
        copyright: copyright.present ? copyright.value : this.copyright,
        type: type ?? this.type,
        isFavorite: isFavorite ?? this.isFavorite,
      );
  @override
  String toString() {
    return (StringBuffer('DailyMediaEntity(')
          ..write('date: $date, ')
          ..write('title: $title, ')
          ..write('explanation: $explanation, ')
          ..write('uri: $uri, ')
          ..write('hdUri: $hdUri, ')
          ..write('copyright: $copyright, ')
          ..write('type: $type, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      date, title, explanation, uri, hdUri, copyright, type, isFavorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyMediaEntity &&
          other.date == this.date &&
          other.title == this.title &&
          other.explanation == this.explanation &&
          other.uri == this.uri &&
          other.hdUri == this.hdUri &&
          other.copyright == this.copyright &&
          other.type == this.type &&
          other.isFavorite == this.isFavorite);
}

class DailyMediaEntitiesCompanion extends UpdateCompanion<DailyMediaEntity> {
  final Value<Date> date;
  final Value<String> title;
  final Value<String> explanation;
  final Value<Uri> uri;
  final Value<Uri> hdUri;
  final Value<String?> copyright;
  final Value<MediaType> type;
  final Value<bool> isFavorite;
  const DailyMediaEntitiesCompanion({
    this.date = const Value.absent(),
    this.title = const Value.absent(),
    this.explanation = const Value.absent(),
    this.uri = const Value.absent(),
    this.hdUri = const Value.absent(),
    this.copyright = const Value.absent(),
    this.type = const Value.absent(),
    this.isFavorite = const Value.absent(),
  });
  DailyMediaEntitiesCompanion.insert({
    this.date = const Value.absent(),
    required String title,
    required String explanation,
    required Uri uri,
    required Uri hdUri,
    this.copyright = const Value.absent(),
    required MediaType type,
    required bool isFavorite,
  })  : title = Value(title),
        explanation = Value(explanation),
        uri = Value(uri),
        hdUri = Value(hdUri),
        type = Value(type),
        isFavorite = Value(isFavorite);
  static Insertable<DailyMediaEntity> custom({
    Expression<int>? date,
    Expression<String>? title,
    Expression<String>? explanation,
    Expression<String>? uri,
    Expression<String>? hdUri,
    Expression<String>? copyright,
    Expression<int>? type,
    Expression<bool>? isFavorite,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (title != null) 'title': title,
      if (explanation != null) 'explanation': explanation,
      if (uri != null) 'uri': uri,
      if (hdUri != null) 'hd_uri': hdUri,
      if (copyright != null) 'copyright': copyright,
      if (type != null) 'type': type,
      if (isFavorite != null) 'is_favorite': isFavorite,
    });
  }

  DailyMediaEntitiesCompanion copyWith(
      {Value<Date>? date,
      Value<String>? title,
      Value<String>? explanation,
      Value<Uri>? uri,
      Value<Uri>? hdUri,
      Value<String?>? copyright,
      Value<MediaType>? type,
      Value<bool>? isFavorite}) {
    return DailyMediaEntitiesCompanion(
      date: date ?? this.date,
      title: title ?? this.title,
      explanation: explanation ?? this.explanation,
      uri: uri ?? this.uri,
      hdUri: hdUri ?? this.hdUri,
      copyright: copyright ?? this.copyright,
      type: type ?? this.type,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      final converter = $DailyMediaEntitiesTable.$converterdate;
      map['date'] = Variable<int>(converter.toSql(date.value));
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    if (uri.present) {
      final converter = $DailyMediaEntitiesTable.$converteruri;
      map['uri'] = Variable<String>(converter.toSql(uri.value));
    }
    if (hdUri.present) {
      final converter = $DailyMediaEntitiesTable.$converterhdUri;
      map['hd_uri'] = Variable<String>(converter.toSql(hdUri.value));
    }
    if (copyright.present) {
      map['copyright'] = Variable<String>(copyright.value);
    }
    if (type.present) {
      final converter = $DailyMediaEntitiesTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type.value));
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyMediaEntitiesCompanion(')
          ..write('date: $date, ')
          ..write('title: $title, ')
          ..write('explanation: $explanation, ')
          ..write('uri: $uri, ')
          ..write('hdUri: $hdUri, ')
          ..write('copyright: $copyright, ')
          ..write('type: $type, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $DailyMediaEntitiesTable dailyMediaEntities =
      $DailyMediaEntitiesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dailyMediaEntities];
}
