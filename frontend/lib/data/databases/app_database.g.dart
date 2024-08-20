// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars, unused_local_variable, invalid_use_of_internal_member, unnecessary_null_comparison, unnecessary_non_null_assertion

part of 'app_database.dart';

// ignore_for_file: type=lint
class $GalleryBaseEntitiesTable extends GalleryBaseEntities
    with TableInfo<$GalleryBaseEntitiesTable, GalleryBaseEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GalleryBaseEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumnWithTypeConverter<Date, int> date =
      GeneratedColumn<int>('date', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<Date>($GalleryBaseEntitiesTable.$converterdate);
  static const VerificationMeta _copyrightMeta =
      const VerificationMeta('copyright');
  @override
  late final GeneratedColumn<String> copyright = GeneratedColumn<String>(
      'copyright', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<GalleryItemType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<GalleryItemType>(
              $GalleryBaseEntitiesTable.$convertertype);
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
  List<GeneratedColumn> get $columns => [date, copyright, type, isFavorite];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gallery_base_entities';
  @override
  VerificationContext validateIntegrity(Insertable<GalleryBaseEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_dateMeta, const VerificationResult.success());
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
  GalleryBaseEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GalleryBaseEntity(
      date: $GalleryBaseEntitiesTable.$converterdate.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date'])!),
      copyright: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}copyright']),
      type: $GalleryBaseEntitiesTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
    );
  }

  @override
  $GalleryBaseEntitiesTable createAlias(String alias) {
    return $GalleryBaseEntitiesTable(attachedDatabase, alias);
  }

  static TypeConverter<Date, int> $converterdate = const DateConverter();
  static JsonTypeConverter2<GalleryItemType, String, String> $convertertype =
      const EnumNameConverter<GalleryItemType>(GalleryItemType.values);
}

class GalleryBaseEntity extends DataClass
    implements Insertable<GalleryBaseEntity> {
  final Date date;
  final String? copyright;
  final GalleryItemType type;
  final bool isFavorite;
  const GalleryBaseEntity(
      {required this.date,
      this.copyright,
      required this.type,
      required this.isFavorite});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['date'] =
          Variable<int>($GalleryBaseEntitiesTable.$converterdate.toSql(date));
    }
    if (!nullToAbsent || copyright != null) {
      map['copyright'] = Variable<String>(copyright);
    }
    {
      map['type'] = Variable<String>(
          $GalleryBaseEntitiesTable.$convertertype.toSql(type));
    }
    map['is_favorite'] = Variable<bool>(isFavorite);
    return map;
  }

  GalleryBaseEntitiesCompanion toCompanion(bool nullToAbsent) {
    return GalleryBaseEntitiesCompanion(
      date: Value(date),
      copyright: copyright == null && nullToAbsent
          ? const Value.absent()
          : Value(copyright),
      type: Value(type),
      isFavorite: Value(isFavorite),
    );
  }

  factory GalleryBaseEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GalleryBaseEntity(
      date: serializer.fromJson<Date>(json['date']),
      copyright: serializer.fromJson<String?>(json['copyright']),
      type: $GalleryBaseEntitiesTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<Date>(date),
      'copyright': serializer.toJson<String?>(copyright),
      'type': serializer.toJson<String>(
          $GalleryBaseEntitiesTable.$convertertype.toJson(type)),
      'isFavorite': serializer.toJson<bool>(isFavorite),
    };
  }

  GalleryBaseEntity copyWith(
          {Date? date,
          Value<String?> copyright = const Value.absent(),
          GalleryItemType? type,
          bool? isFavorite}) =>
      GalleryBaseEntity(
        date: date ?? this.date,
        copyright: copyright.present ? copyright.value : this.copyright,
        type: type ?? this.type,
        isFavorite: isFavorite ?? this.isFavorite,
      );
  GalleryBaseEntity copyWithCompanion(GalleryBaseEntitiesCompanion data) {
    return GalleryBaseEntity(
      date: data.date.present ? data.date.value : this.date,
      copyright: data.copyright.present ? data.copyright.value : this.copyright,
      type: data.type.present ? data.type.value : this.type,
      isFavorite:
          data.isFavorite.present ? data.isFavorite.value : this.isFavorite,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GalleryBaseEntity(')
          ..write('date: $date, ')
          ..write('copyright: $copyright, ')
          ..write('type: $type, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(date, copyright, type, isFavorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GalleryBaseEntity &&
          other.date == this.date &&
          other.copyright == this.copyright &&
          other.type == this.type &&
          other.isFavorite == this.isFavorite);
}

class GalleryBaseEntitiesCompanion extends UpdateCompanion<GalleryBaseEntity> {
  final Value<Date> date;
  final Value<String?> copyright;
  final Value<GalleryItemType> type;
  final Value<bool> isFavorite;
  const GalleryBaseEntitiesCompanion({
    this.date = const Value.absent(),
    this.copyright = const Value.absent(),
    this.type = const Value.absent(),
    this.isFavorite = const Value.absent(),
  });
  GalleryBaseEntitiesCompanion.insert({
    this.date = const Value.absent(),
    this.copyright = const Value.absent(),
    required GalleryItemType type,
    required bool isFavorite,
  })  : type = Value(type),
        isFavorite = Value(isFavorite);
  static Insertable<GalleryBaseEntity> custom({
    Expression<int>? date,
    Expression<String>? copyright,
    Expression<String>? type,
    Expression<bool>? isFavorite,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (copyright != null) 'copyright': copyright,
      if (type != null) 'type': type,
      if (isFavorite != null) 'is_favorite': isFavorite,
    });
  }

  GalleryBaseEntitiesCompanion copyWith(
      {Value<Date>? date,
      Value<String?>? copyright,
      Value<GalleryItemType>? type,
      Value<bool>? isFavorite}) {
    return GalleryBaseEntitiesCompanion(
      date: date ?? this.date,
      copyright: copyright ?? this.copyright,
      type: type ?? this.type,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<int>(
          $GalleryBaseEntitiesTable.$converterdate.toSql(date.value));
    }
    if (copyright.present) {
      map['copyright'] = Variable<String>(copyright.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
          $GalleryBaseEntitiesTable.$convertertype.toSql(type.value));
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GalleryBaseEntitiesCompanion(')
          ..write('date: $date, ')
          ..write('copyright: $copyright, ')
          ..write('type: $type, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }
}

class $GalleryImageEntitiesTable extends GalleryImageEntities
    with TableInfo<$GalleryImageEntitiesTable, GalleryImageEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GalleryImageEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumnWithTypeConverter<Date, int> date =
      GeneratedColumn<int>('date', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES gallery_base_entities (date)'))
          .withConverter<Date>($GalleryImageEntitiesTable.$converterdate);
  static const VerificationMeta _uriMeta = const VerificationMeta('uri');
  @override
  late final GeneratedColumnWithTypeConverter<Uri, String> uri =
      GeneratedColumn<String>('uri', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Uri>($GalleryImageEntitiesTable.$converteruri);
  static const VerificationMeta _hdUriMeta = const VerificationMeta('hdUri');
  @override
  late final GeneratedColumnWithTypeConverter<Uri, String> hdUri =
      GeneratedColumn<String>('hd_uri', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Uri>($GalleryImageEntitiesTable.$converterhdUri);
  static const VerificationMeta _thumbUriMeta =
      const VerificationMeta('thumbUri');
  @override
  late final GeneratedColumnWithTypeConverter<Uri, String> thumbUri =
      GeneratedColumn<String>('thumb_uri', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Uri>($GalleryImageEntitiesTable.$converterthumbUri);
  static const VerificationMeta _aspectRatioMeta =
      const VerificationMeta('aspectRatio');
  @override
  late final GeneratedColumn<double> aspectRatio = GeneratedColumn<double>(
      'aspect_ratio', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _aspectRatioThumbMeta =
      const VerificationMeta('aspectRatioThumb');
  @override
  late final GeneratedColumn<double> aspectRatioThumb = GeneratedColumn<double>(
      'aspect_ratio_thumb', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _blurHashMeta =
      const VerificationMeta('blurHash');
  @override
  late final GeneratedColumn<String> blurHash = GeneratedColumn<String>(
      'blur_hash', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _blurHashThumbMeta =
      const VerificationMeta('blurHashThumb');
  @override
  late final GeneratedColumn<String> blurHashThumb = GeneratedColumn<String>(
      'blur_hash_thumb', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        date,
        uri,
        hdUri,
        thumbUri,
        aspectRatio,
        aspectRatioThumb,
        blurHash,
        blurHashThumb
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gallery_image_entities';
  @override
  VerificationContext validateIntegrity(Insertable<GalleryImageEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_dateMeta, const VerificationResult.success());
    context.handle(_uriMeta, const VerificationResult.success());
    context.handle(_hdUriMeta, const VerificationResult.success());
    context.handle(_thumbUriMeta, const VerificationResult.success());
    if (data.containsKey('aspect_ratio')) {
      context.handle(
          _aspectRatioMeta,
          aspectRatio.isAcceptableOrUnknown(
              data['aspect_ratio']!, _aspectRatioMeta));
    } else if (isInserting) {
      context.missing(_aspectRatioMeta);
    }
    if (data.containsKey('aspect_ratio_thumb')) {
      context.handle(
          _aspectRatioThumbMeta,
          aspectRatioThumb.isAcceptableOrUnknown(
              data['aspect_ratio_thumb']!, _aspectRatioThumbMeta));
    } else if (isInserting) {
      context.missing(_aspectRatioThumbMeta);
    }
    if (data.containsKey('blur_hash')) {
      context.handle(_blurHashMeta,
          blurHash.isAcceptableOrUnknown(data['blur_hash']!, _blurHashMeta));
    } else if (isInserting) {
      context.missing(_blurHashMeta);
    }
    if (data.containsKey('blur_hash_thumb')) {
      context.handle(
          _blurHashThumbMeta,
          blurHashThumb.isAcceptableOrUnknown(
              data['blur_hash_thumb']!, _blurHashThumbMeta));
    } else if (isInserting) {
      context.missing(_blurHashThumbMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {date};
  @override
  GalleryImageEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GalleryImageEntity(
      date: $GalleryImageEntitiesTable.$converterdate.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date'])!),
      uri: $GalleryImageEntitiesTable.$converteruri.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uri'])!),
      hdUri: $GalleryImageEntitiesTable.$converterhdUri.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hd_uri'])!),
      thumbUri: $GalleryImageEntitiesTable.$converterthumbUri.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}thumb_uri'])!),
      aspectRatio: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}aspect_ratio'])!,
      aspectRatioThumb: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}aspect_ratio_thumb'])!,
      blurHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}blur_hash'])!,
      blurHashThumb: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}blur_hash_thumb'])!,
    );
  }

  @override
  $GalleryImageEntitiesTable createAlias(String alias) {
    return $GalleryImageEntitiesTable(attachedDatabase, alias);
  }

  static TypeConverter<Date, int> $converterdate = const DateConverter();
  static TypeConverter<Uri, String> $converteruri = const UriConverter();
  static TypeConverter<Uri, String> $converterhdUri = const UriConverter();
  static TypeConverter<Uri, String> $converterthumbUri = const UriConverter();
}

class GalleryImageEntity extends DataClass
    implements Insertable<GalleryImageEntity> {
  final Date date;
  final Uri uri;
  final Uri hdUri;
  final Uri thumbUri;
  final double aspectRatio;
  final double aspectRatioThumb;
  final String blurHash;
  final String blurHashThumb;
  const GalleryImageEntity(
      {required this.date,
      required this.uri,
      required this.hdUri,
      required this.thumbUri,
      required this.aspectRatio,
      required this.aspectRatioThumb,
      required this.blurHash,
      required this.blurHashThumb});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['date'] =
          Variable<int>($GalleryImageEntitiesTable.$converterdate.toSql(date));
    }
    {
      map['uri'] =
          Variable<String>($GalleryImageEntitiesTable.$converteruri.toSql(uri));
    }
    {
      map['hd_uri'] = Variable<String>(
          $GalleryImageEntitiesTable.$converterhdUri.toSql(hdUri));
    }
    {
      map['thumb_uri'] = Variable<String>(
          $GalleryImageEntitiesTable.$converterthumbUri.toSql(thumbUri));
    }
    map['aspect_ratio'] = Variable<double>(aspectRatio);
    map['aspect_ratio_thumb'] = Variable<double>(aspectRatioThumb);
    map['blur_hash'] = Variable<String>(blurHash);
    map['blur_hash_thumb'] = Variable<String>(blurHashThumb);
    return map;
  }

  GalleryImageEntitiesCompanion toCompanion(bool nullToAbsent) {
    return GalleryImageEntitiesCompanion(
      date: Value(date),
      uri: Value(uri),
      hdUri: Value(hdUri),
      thumbUri: Value(thumbUri),
      aspectRatio: Value(aspectRatio),
      aspectRatioThumb: Value(aspectRatioThumb),
      blurHash: Value(blurHash),
      blurHashThumb: Value(blurHashThumb),
    );
  }

  factory GalleryImageEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GalleryImageEntity(
      date: serializer.fromJson<Date>(json['date']),
      uri: serializer.fromJson<Uri>(json['uri']),
      hdUri: serializer.fromJson<Uri>(json['hdUri']),
      thumbUri: serializer.fromJson<Uri>(json['thumbUri']),
      aspectRatio: serializer.fromJson<double>(json['aspectRatio']),
      aspectRatioThumb: serializer.fromJson<double>(json['aspectRatioThumb']),
      blurHash: serializer.fromJson<String>(json['blurHash']),
      blurHashThumb: serializer.fromJson<String>(json['blurHashThumb']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<Date>(date),
      'uri': serializer.toJson<Uri>(uri),
      'hdUri': serializer.toJson<Uri>(hdUri),
      'thumbUri': serializer.toJson<Uri>(thumbUri),
      'aspectRatio': serializer.toJson<double>(aspectRatio),
      'aspectRatioThumb': serializer.toJson<double>(aspectRatioThumb),
      'blurHash': serializer.toJson<String>(blurHash),
      'blurHashThumb': serializer.toJson<String>(blurHashThumb),
    };
  }

  GalleryImageEntity copyWith(
          {Date? date,
          Uri? uri,
          Uri? hdUri,
          Uri? thumbUri,
          double? aspectRatio,
          double? aspectRatioThumb,
          String? blurHash,
          String? blurHashThumb}) =>
      GalleryImageEntity(
        date: date ?? this.date,
        uri: uri ?? this.uri,
        hdUri: hdUri ?? this.hdUri,
        thumbUri: thumbUri ?? this.thumbUri,
        aspectRatio: aspectRatio ?? this.aspectRatio,
        aspectRatioThumb: aspectRatioThumb ?? this.aspectRatioThumb,
        blurHash: blurHash ?? this.blurHash,
        blurHashThumb: blurHashThumb ?? this.blurHashThumb,
      );
  GalleryImageEntity copyWithCompanion(GalleryImageEntitiesCompanion data) {
    return GalleryImageEntity(
      date: data.date.present ? data.date.value : this.date,
      uri: data.uri.present ? data.uri.value : this.uri,
      hdUri: data.hdUri.present ? data.hdUri.value : this.hdUri,
      thumbUri: data.thumbUri.present ? data.thumbUri.value : this.thumbUri,
      aspectRatio:
          data.aspectRatio.present ? data.aspectRatio.value : this.aspectRatio,
      aspectRatioThumb: data.aspectRatioThumb.present
          ? data.aspectRatioThumb.value
          : this.aspectRatioThumb,
      blurHash: data.blurHash.present ? data.blurHash.value : this.blurHash,
      blurHashThumb: data.blurHashThumb.present
          ? data.blurHashThumb.value
          : this.blurHashThumb,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GalleryImageEntity(')
          ..write('date: $date, ')
          ..write('uri: $uri, ')
          ..write('hdUri: $hdUri, ')
          ..write('thumbUri: $thumbUri, ')
          ..write('aspectRatio: $aspectRatio, ')
          ..write('aspectRatioThumb: $aspectRatioThumb, ')
          ..write('blurHash: $blurHash, ')
          ..write('blurHashThumb: $blurHashThumb')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(date, uri, hdUri, thumbUri, aspectRatio,
      aspectRatioThumb, blurHash, blurHashThumb);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GalleryImageEntity &&
          other.date == this.date &&
          other.uri == this.uri &&
          other.hdUri == this.hdUri &&
          other.thumbUri == this.thumbUri &&
          other.aspectRatio == this.aspectRatio &&
          other.aspectRatioThumb == this.aspectRatioThumb &&
          other.blurHash == this.blurHash &&
          other.blurHashThumb == this.blurHashThumb);
}

class GalleryImageEntitiesCompanion
    extends UpdateCompanion<GalleryImageEntity> {
  final Value<Date> date;
  final Value<Uri> uri;
  final Value<Uri> hdUri;
  final Value<Uri> thumbUri;
  final Value<double> aspectRatio;
  final Value<double> aspectRatioThumb;
  final Value<String> blurHash;
  final Value<String> blurHashThumb;
  const GalleryImageEntitiesCompanion({
    this.date = const Value.absent(),
    this.uri = const Value.absent(),
    this.hdUri = const Value.absent(),
    this.thumbUri = const Value.absent(),
    this.aspectRatio = const Value.absent(),
    this.aspectRatioThumb = const Value.absent(),
    this.blurHash = const Value.absent(),
    this.blurHashThumb = const Value.absent(),
  });
  GalleryImageEntitiesCompanion.insert({
    this.date = const Value.absent(),
    required Uri uri,
    required Uri hdUri,
    required Uri thumbUri,
    required double aspectRatio,
    required double aspectRatioThumb,
    required String blurHash,
    required String blurHashThumb,
  })  : uri = Value(uri),
        hdUri = Value(hdUri),
        thumbUri = Value(thumbUri),
        aspectRatio = Value(aspectRatio),
        aspectRatioThumb = Value(aspectRatioThumb),
        blurHash = Value(blurHash),
        blurHashThumb = Value(blurHashThumb);
  static Insertable<GalleryImageEntity> custom({
    Expression<int>? date,
    Expression<String>? uri,
    Expression<String>? hdUri,
    Expression<String>? thumbUri,
    Expression<double>? aspectRatio,
    Expression<double>? aspectRatioThumb,
    Expression<String>? blurHash,
    Expression<String>? blurHashThumb,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (uri != null) 'uri': uri,
      if (hdUri != null) 'hd_uri': hdUri,
      if (thumbUri != null) 'thumb_uri': thumbUri,
      if (aspectRatio != null) 'aspect_ratio': aspectRatio,
      if (aspectRatioThumb != null) 'aspect_ratio_thumb': aspectRatioThumb,
      if (blurHash != null) 'blur_hash': blurHash,
      if (blurHashThumb != null) 'blur_hash_thumb': blurHashThumb,
    });
  }

  GalleryImageEntitiesCompanion copyWith(
      {Value<Date>? date,
      Value<Uri>? uri,
      Value<Uri>? hdUri,
      Value<Uri>? thumbUri,
      Value<double>? aspectRatio,
      Value<double>? aspectRatioThumb,
      Value<String>? blurHash,
      Value<String>? blurHashThumb}) {
    return GalleryImageEntitiesCompanion(
      date: date ?? this.date,
      uri: uri ?? this.uri,
      hdUri: hdUri ?? this.hdUri,
      thumbUri: thumbUri ?? this.thumbUri,
      aspectRatio: aspectRatio ?? this.aspectRatio,
      aspectRatioThumb: aspectRatioThumb ?? this.aspectRatioThumb,
      blurHash: blurHash ?? this.blurHash,
      blurHashThumb: blurHashThumb ?? this.blurHashThumb,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<int>(
          $GalleryImageEntitiesTable.$converterdate.toSql(date.value));
    }
    if (uri.present) {
      map['uri'] = Variable<String>(
          $GalleryImageEntitiesTable.$converteruri.toSql(uri.value));
    }
    if (hdUri.present) {
      map['hd_uri'] = Variable<String>(
          $GalleryImageEntitiesTable.$converterhdUri.toSql(hdUri.value));
    }
    if (thumbUri.present) {
      map['thumb_uri'] = Variable<String>(
          $GalleryImageEntitiesTable.$converterthumbUri.toSql(thumbUri.value));
    }
    if (aspectRatio.present) {
      map['aspect_ratio'] = Variable<double>(aspectRatio.value);
    }
    if (aspectRatioThumb.present) {
      map['aspect_ratio_thumb'] = Variable<double>(aspectRatioThumb.value);
    }
    if (blurHash.present) {
      map['blur_hash'] = Variable<String>(blurHash.value);
    }
    if (blurHashThumb.present) {
      map['blur_hash_thumb'] = Variable<String>(blurHashThumb.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GalleryImageEntitiesCompanion(')
          ..write('date: $date, ')
          ..write('uri: $uri, ')
          ..write('hdUri: $hdUri, ')
          ..write('thumbUri: $thumbUri, ')
          ..write('aspectRatio: $aspectRatio, ')
          ..write('aspectRatioThumb: $aspectRatioThumb, ')
          ..write('blurHash: $blurHash, ')
          ..write('blurHashThumb: $blurHashThumb')
          ..write(')'))
        .toString();
  }
}

class $GalleryVideoEntitiesTable extends GalleryVideoEntities
    with TableInfo<$GalleryVideoEntitiesTable, GalleryVideoEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GalleryVideoEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumnWithTypeConverter<Date, int> date =
      GeneratedColumn<int>('date', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES gallery_base_entities (date)'))
          .withConverter<Date>($GalleryVideoEntitiesTable.$converterdate);
  static const VerificationMeta _uriMeta = const VerificationMeta('uri');
  @override
  late final GeneratedColumnWithTypeConverter<Uri, String> uri =
      GeneratedColumn<String>('uri', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Uri>($GalleryVideoEntitiesTable.$converteruri);
  @override
  List<GeneratedColumn> get $columns => [date, uri];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gallery_video_entities';
  @override
  VerificationContext validateIntegrity(Insertable<GalleryVideoEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_dateMeta, const VerificationResult.success());
    context.handle(_uriMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {date};
  @override
  GalleryVideoEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GalleryVideoEntity(
      date: $GalleryVideoEntitiesTable.$converterdate.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date'])!),
      uri: $GalleryVideoEntitiesTable.$converteruri.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uri'])!),
    );
  }

  @override
  $GalleryVideoEntitiesTable createAlias(String alias) {
    return $GalleryVideoEntitiesTable(attachedDatabase, alias);
  }

  static TypeConverter<Date, int> $converterdate = const DateConverter();
  static TypeConverter<Uri, String> $converteruri = const UriConverter();
}

class GalleryVideoEntity extends DataClass
    implements Insertable<GalleryVideoEntity> {
  final Date date;
  final Uri uri;
  const GalleryVideoEntity({required this.date, required this.uri});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['date'] =
          Variable<int>($GalleryVideoEntitiesTable.$converterdate.toSql(date));
    }
    {
      map['uri'] =
          Variable<String>($GalleryVideoEntitiesTable.$converteruri.toSql(uri));
    }
    return map;
  }

  GalleryVideoEntitiesCompanion toCompanion(bool nullToAbsent) {
    return GalleryVideoEntitiesCompanion(
      date: Value(date),
      uri: Value(uri),
    );
  }

  factory GalleryVideoEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GalleryVideoEntity(
      date: serializer.fromJson<Date>(json['date']),
      uri: serializer.fromJson<Uri>(json['uri']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<Date>(date),
      'uri': serializer.toJson<Uri>(uri),
    };
  }

  GalleryVideoEntity copyWith({Date? date, Uri? uri}) => GalleryVideoEntity(
        date: date ?? this.date,
        uri: uri ?? this.uri,
      );
  GalleryVideoEntity copyWithCompanion(GalleryVideoEntitiesCompanion data) {
    return GalleryVideoEntity(
      date: data.date.present ? data.date.value : this.date,
      uri: data.uri.present ? data.uri.value : this.uri,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GalleryVideoEntity(')
          ..write('date: $date, ')
          ..write('uri: $uri')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(date, uri);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GalleryVideoEntity &&
          other.date == this.date &&
          other.uri == this.uri);
}

class GalleryVideoEntitiesCompanion
    extends UpdateCompanion<GalleryVideoEntity> {
  final Value<Date> date;
  final Value<Uri> uri;
  const GalleryVideoEntitiesCompanion({
    this.date = const Value.absent(),
    this.uri = const Value.absent(),
  });
  GalleryVideoEntitiesCompanion.insert({
    this.date = const Value.absent(),
    required Uri uri,
  }) : uri = Value(uri);
  static Insertable<GalleryVideoEntity> custom({
    Expression<int>? date,
    Expression<String>? uri,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (uri != null) 'uri': uri,
    });
  }

  GalleryVideoEntitiesCompanion copyWith({Value<Date>? date, Value<Uri>? uri}) {
    return GalleryVideoEntitiesCompanion(
      date: date ?? this.date,
      uri: uri ?? this.uri,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<int>(
          $GalleryVideoEntitiesTable.$converterdate.toSql(date.value));
    }
    if (uri.present) {
      map['uri'] = Variable<String>(
          $GalleryVideoEntitiesTable.$converteruri.toSql(uri.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GalleryVideoEntitiesCompanion(')
          ..write('date: $date, ')
          ..write('uri: $uri')
          ..write(')'))
        .toString();
  }
}

class $GalleryOtherEntitiesTable extends GalleryOtherEntities
    with TableInfo<$GalleryOtherEntitiesTable, GalleryOtherEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GalleryOtherEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumnWithTypeConverter<Date, int> date =
      GeneratedColumn<int>('date', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES gallery_base_entities (date)'))
          .withConverter<Date>($GalleryOtherEntitiesTable.$converterdate);
  static const VerificationMeta _uriMeta = const VerificationMeta('uri');
  @override
  late final GeneratedColumnWithTypeConverter<Uri, String> uri =
      GeneratedColumn<String>('uri', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Uri>($GalleryOtherEntitiesTable.$converteruri);
  @override
  List<GeneratedColumn> get $columns => [date, uri];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gallery_other_entities';
  @override
  VerificationContext validateIntegrity(Insertable<GalleryOtherEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_dateMeta, const VerificationResult.success());
    context.handle(_uriMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {date};
  @override
  GalleryOtherEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GalleryOtherEntity(
      date: $GalleryOtherEntitiesTable.$converterdate.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date'])!),
      uri: $GalleryOtherEntitiesTable.$converteruri.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uri'])!),
    );
  }

  @override
  $GalleryOtherEntitiesTable createAlias(String alias) {
    return $GalleryOtherEntitiesTable(attachedDatabase, alias);
  }

  static TypeConverter<Date, int> $converterdate = const DateConverter();
  static TypeConverter<Uri, String> $converteruri = const UriConverter();
}

class GalleryOtherEntity extends DataClass
    implements Insertable<GalleryOtherEntity> {
  final Date date;
  final Uri uri;
  const GalleryOtherEntity({required this.date, required this.uri});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['date'] =
          Variable<int>($GalleryOtherEntitiesTable.$converterdate.toSql(date));
    }
    {
      map['uri'] =
          Variable<String>($GalleryOtherEntitiesTable.$converteruri.toSql(uri));
    }
    return map;
  }

  GalleryOtherEntitiesCompanion toCompanion(bool nullToAbsent) {
    return GalleryOtherEntitiesCompanion(
      date: Value(date),
      uri: Value(uri),
    );
  }

  factory GalleryOtherEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GalleryOtherEntity(
      date: serializer.fromJson<Date>(json['date']),
      uri: serializer.fromJson<Uri>(json['uri']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<Date>(date),
      'uri': serializer.toJson<Uri>(uri),
    };
  }

  GalleryOtherEntity copyWith({Date? date, Uri? uri}) => GalleryOtherEntity(
        date: date ?? this.date,
        uri: uri ?? this.uri,
      );
  GalleryOtherEntity copyWithCompanion(GalleryOtherEntitiesCompanion data) {
    return GalleryOtherEntity(
      date: data.date.present ? data.date.value : this.date,
      uri: data.uri.present ? data.uri.value : this.uri,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GalleryOtherEntity(')
          ..write('date: $date, ')
          ..write('uri: $uri')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(date, uri);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GalleryOtherEntity &&
          other.date == this.date &&
          other.uri == this.uri);
}

class GalleryOtherEntitiesCompanion
    extends UpdateCompanion<GalleryOtherEntity> {
  final Value<Date> date;
  final Value<Uri> uri;
  const GalleryOtherEntitiesCompanion({
    this.date = const Value.absent(),
    this.uri = const Value.absent(),
  });
  GalleryOtherEntitiesCompanion.insert({
    this.date = const Value.absent(),
    required Uri uri,
  }) : uri = Value(uri);
  static Insertable<GalleryOtherEntity> custom({
    Expression<int>? date,
    Expression<String>? uri,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (uri != null) 'uri': uri,
    });
  }

  GalleryOtherEntitiesCompanion copyWith({Value<Date>? date, Value<Uri>? uri}) {
    return GalleryOtherEntitiesCompanion(
      date: date ?? this.date,
      uri: uri ?? this.uri,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<int>(
          $GalleryOtherEntitiesTable.$converterdate.toSql(date.value));
    }
    if (uri.present) {
      map['uri'] = Variable<String>(
          $GalleryOtherEntitiesTable.$converteruri.toSql(uri.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GalleryOtherEntitiesCompanion(')
          ..write('date: $date, ')
          ..write('uri: $uri')
          ..write(')'))
        .toString();
  }
}

class $GalleryEmptyEntitiesTable extends GalleryEmptyEntities
    with TableInfo<$GalleryEmptyEntitiesTable, GalleryEmptyEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GalleryEmptyEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumnWithTypeConverter<Date, int> date =
      GeneratedColumn<int>('date', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES gallery_base_entities (date)'))
          .withConverter<Date>($GalleryEmptyEntitiesTable.$converterdate);
  @override
  List<GeneratedColumn> get $columns => [date];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gallery_empty_entities';
  @override
  VerificationContext validateIntegrity(Insertable<GalleryEmptyEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_dateMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {date};
  @override
  GalleryEmptyEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GalleryEmptyEntity(
      date: $GalleryEmptyEntitiesTable.$converterdate.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date'])!),
    );
  }

  @override
  $GalleryEmptyEntitiesTable createAlias(String alias) {
    return $GalleryEmptyEntitiesTable(attachedDatabase, alias);
  }

  static TypeConverter<Date, int> $converterdate = const DateConverter();
}

class GalleryEmptyEntity extends DataClass
    implements Insertable<GalleryEmptyEntity> {
  final Date date;
  const GalleryEmptyEntity({required this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['date'] =
          Variable<int>($GalleryEmptyEntitiesTable.$converterdate.toSql(date));
    }
    return map;
  }

  GalleryEmptyEntitiesCompanion toCompanion(bool nullToAbsent) {
    return GalleryEmptyEntitiesCompanion(
      date: Value(date),
    );
  }

  factory GalleryEmptyEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GalleryEmptyEntity(
      date: serializer.fromJson<Date>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<Date>(date),
    };
  }

  GalleryEmptyEntity copyWith({Date? date}) => GalleryEmptyEntity(
        date: date ?? this.date,
      );
  GalleryEmptyEntity copyWithCompanion(GalleryEmptyEntitiesCompanion data) {
    return GalleryEmptyEntity(
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GalleryEmptyEntity(')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => date.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GalleryEmptyEntity && other.date == this.date);
}

class GalleryEmptyEntitiesCompanion
    extends UpdateCompanion<GalleryEmptyEntity> {
  final Value<Date> date;
  const GalleryEmptyEntitiesCompanion({
    this.date = const Value.absent(),
  });
  GalleryEmptyEntitiesCompanion.insert({
    this.date = const Value.absent(),
  });
  static Insertable<GalleryEmptyEntity> custom({
    Expression<int>? date,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
    });
  }

  GalleryEmptyEntitiesCompanion copyWith({Value<Date>? date}) {
    return GalleryEmptyEntitiesCompanion(
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<int>(
          $GalleryEmptyEntitiesTable.$converterdate.toSql(date.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GalleryEmptyEntitiesCompanion(')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $GalleryInfoEntitiesTable extends GalleryInfoEntities
    with TableInfo<$GalleryInfoEntitiesTable, GalleryInfoEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GalleryInfoEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumnWithTypeConverter<Date, int> date =
      GeneratedColumn<int>('date', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES gallery_base_entities (date)'))
          .withConverter<Date>($GalleryInfoEntitiesTable.$converterdate);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumnWithTypeConverter<ContentLanguage, String>
      language = GeneratedColumn<String>('language', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ContentLanguage>(
              $GalleryInfoEntitiesTable.$converterlanguage);
  static const VerificationMeta _originalLanguageMeta =
      const VerificationMeta('originalLanguage');
  @override
  late final GeneratedColumnWithTypeConverter<ContentLanguage, String>
      originalLanguage = GeneratedColumn<String>(
              'original_language', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ContentLanguage>(
              $GalleryInfoEntitiesTable.$converteroriginalLanguage);
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
  @override
  List<GeneratedColumn> get $columns =>
      [date, language, originalLanguage, title, explanation];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gallery_info_entities';
  @override
  VerificationContext validateIntegrity(Insertable<GalleryInfoEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_dateMeta, const VerificationResult.success());
    context.handle(_languageMeta, const VerificationResult.success());
    context.handle(_originalLanguageMeta, const VerificationResult.success());
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {date, language};
  @override
  GalleryInfoEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GalleryInfoEntity(
      date: $GalleryInfoEntitiesTable.$converterdate.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date'])!),
      language: $GalleryInfoEntitiesTable.$converterlanguage.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}language'])!),
      originalLanguage: $GalleryInfoEntitiesTable.$converteroriginalLanguage
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}original_language'])!),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      explanation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}explanation'])!,
    );
  }

  @override
  $GalleryInfoEntitiesTable createAlias(String alias) {
    return $GalleryInfoEntitiesTable(attachedDatabase, alias);
  }

  static TypeConverter<Date, int> $converterdate = const DateConverter();
  static JsonTypeConverter2<ContentLanguage, String, String>
      $converterlanguage =
      const EnumNameConverter<ContentLanguage>(ContentLanguage.values);
  static JsonTypeConverter2<ContentLanguage, String, String>
      $converteroriginalLanguage =
      const EnumNameConverter<ContentLanguage>(ContentLanguage.values);
}

class GalleryInfoEntity extends DataClass
    implements Insertable<GalleryInfoEntity> {
  final Date date;
  final ContentLanguage language;
  final ContentLanguage originalLanguage;
  final String title;
  final String explanation;
  const GalleryInfoEntity(
      {required this.date,
      required this.language,
      required this.originalLanguage,
      required this.title,
      required this.explanation});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['date'] =
          Variable<int>($GalleryInfoEntitiesTable.$converterdate.toSql(date));
    }
    {
      map['language'] = Variable<String>(
          $GalleryInfoEntitiesTable.$converterlanguage.toSql(language));
    }
    {
      map['original_language'] = Variable<String>($GalleryInfoEntitiesTable
          .$converteroriginalLanguage
          .toSql(originalLanguage));
    }
    map['title'] = Variable<String>(title);
    map['explanation'] = Variable<String>(explanation);
    return map;
  }

  GalleryInfoEntitiesCompanion toCompanion(bool nullToAbsent) {
    return GalleryInfoEntitiesCompanion(
      date: Value(date),
      language: Value(language),
      originalLanguage: Value(originalLanguage),
      title: Value(title),
      explanation: Value(explanation),
    );
  }

  factory GalleryInfoEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GalleryInfoEntity(
      date: serializer.fromJson<Date>(json['date']),
      language: $GalleryInfoEntitiesTable.$converterlanguage
          .fromJson(serializer.fromJson<String>(json['language'])),
      originalLanguage: $GalleryInfoEntitiesTable.$converteroriginalLanguage
          .fromJson(serializer.fromJson<String>(json['originalLanguage'])),
      title: serializer.fromJson<String>(json['title']),
      explanation: serializer.fromJson<String>(json['explanation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<Date>(date),
      'language': serializer.toJson<String>(
          $GalleryInfoEntitiesTable.$converterlanguage.toJson(language)),
      'originalLanguage': serializer.toJson<String>($GalleryInfoEntitiesTable
          .$converteroriginalLanguage
          .toJson(originalLanguage)),
      'title': serializer.toJson<String>(title),
      'explanation': serializer.toJson<String>(explanation),
    };
  }

  GalleryInfoEntity copyWith(
          {Date? date,
          ContentLanguage? language,
          ContentLanguage? originalLanguage,
          String? title,
          String? explanation}) =>
      GalleryInfoEntity(
        date: date ?? this.date,
        language: language ?? this.language,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        title: title ?? this.title,
        explanation: explanation ?? this.explanation,
      );
  GalleryInfoEntity copyWithCompanion(GalleryInfoEntitiesCompanion data) {
    return GalleryInfoEntity(
      date: data.date.present ? data.date.value : this.date,
      language: data.language.present ? data.language.value : this.language,
      originalLanguage: data.originalLanguage.present
          ? data.originalLanguage.value
          : this.originalLanguage,
      title: data.title.present ? data.title.value : this.title,
      explanation:
          data.explanation.present ? data.explanation.value : this.explanation,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GalleryInfoEntity(')
          ..write('date: $date, ')
          ..write('language: $language, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('title: $title, ')
          ..write('explanation: $explanation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(date, language, originalLanguage, title, explanation);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GalleryInfoEntity &&
          other.date == this.date &&
          other.language == this.language &&
          other.originalLanguage == this.originalLanguage &&
          other.title == this.title &&
          other.explanation == this.explanation);
}

class GalleryInfoEntitiesCompanion extends UpdateCompanion<GalleryInfoEntity> {
  final Value<Date> date;
  final Value<ContentLanguage> language;
  final Value<ContentLanguage> originalLanguage;
  final Value<String> title;
  final Value<String> explanation;
  final Value<int> rowid;
  const GalleryInfoEntitiesCompanion({
    this.date = const Value.absent(),
    this.language = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.title = const Value.absent(),
    this.explanation = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GalleryInfoEntitiesCompanion.insert({
    required Date date,
    required ContentLanguage language,
    required ContentLanguage originalLanguage,
    required String title,
    required String explanation,
    this.rowid = const Value.absent(),
  })  : date = Value(date),
        language = Value(language),
        originalLanguage = Value(originalLanguage),
        title = Value(title),
        explanation = Value(explanation);
  static Insertable<GalleryInfoEntity> custom({
    Expression<int>? date,
    Expression<String>? language,
    Expression<String>? originalLanguage,
    Expression<String>? title,
    Expression<String>? explanation,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (language != null) 'language': language,
      if (originalLanguage != null) 'original_language': originalLanguage,
      if (title != null) 'title': title,
      if (explanation != null) 'explanation': explanation,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GalleryInfoEntitiesCompanion copyWith(
      {Value<Date>? date,
      Value<ContentLanguage>? language,
      Value<ContentLanguage>? originalLanguage,
      Value<String>? title,
      Value<String>? explanation,
      Value<int>? rowid}) {
    return GalleryInfoEntitiesCompanion(
      date: date ?? this.date,
      language: language ?? this.language,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      title: title ?? this.title,
      explanation: explanation ?? this.explanation,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<int>(
          $GalleryInfoEntitiesTable.$converterdate.toSql(date.value));
    }
    if (language.present) {
      map['language'] = Variable<String>(
          $GalleryInfoEntitiesTable.$converterlanguage.toSql(language.value));
    }
    if (originalLanguage.present) {
      map['original_language'] = Variable<String>($GalleryInfoEntitiesTable
          .$converteroriginalLanguage
          .toSql(originalLanguage.value));
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GalleryInfoEntitiesCompanion(')
          ..write('date: $date, ')
          ..write('language: $language, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('title: $title, ')
          ..write('explanation: $explanation, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NewsSourceEntitiesTable extends NewsSourceEntities
    with TableInfo<$NewsSourceEntitiesTable, NewsSourceEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NewsSourceEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uriMeta = const VerificationMeta('uri');
  @override
  late final GeneratedColumnWithTypeConverter<Uri, String> uri =
      GeneratedColumn<String>('uri', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Uri>($NewsSourceEntitiesTable.$converteruri);
  static const VerificationMeta _iconUriMeta =
      const VerificationMeta('iconUri');
  @override
  late final GeneratedColumnWithTypeConverter<Uri, String> iconUri =
      GeneratedColumn<String>('icon_uri', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Uri>($NewsSourceEntitiesTable.$convertericonUri);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumnWithTypeConverter<ContentLanguage, String>
      language = GeneratedColumn<String>('language', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ContentLanguage>(
              $NewsSourceEntitiesTable.$converterlanguage);
  static const VerificationMeta _isShownMeta =
      const VerificationMeta('isShown');
  @override
  late final GeneratedColumn<bool> isShown = GeneratedColumn<bool>(
      'is_shown', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_shown" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [uri, iconUri, language, isShown];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'news_source_entities';
  @override
  VerificationContext validateIntegrity(Insertable<NewsSourceEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_uriMeta, const VerificationResult.success());
    context.handle(_iconUriMeta, const VerificationResult.success());
    context.handle(_languageMeta, const VerificationResult.success());
    if (data.containsKey('is_shown')) {
      context.handle(_isShownMeta,
          isShown.isAcceptableOrUnknown(data['is_shown']!, _isShownMeta));
    } else if (isInserting) {
      context.missing(_isShownMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uri};
  @override
  NewsSourceEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NewsSourceEntity(
      uri: $NewsSourceEntitiesTable.$converteruri.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uri'])!),
      iconUri: $NewsSourceEntitiesTable.$convertericonUri.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}icon_uri'])!),
      language: $NewsSourceEntitiesTable.$converterlanguage.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}language'])!),
      isShown: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_shown'])!,
    );
  }

  @override
  $NewsSourceEntitiesTable createAlias(String alias) {
    return $NewsSourceEntitiesTable(attachedDatabase, alias);
  }

  static TypeConverter<Uri, String> $converteruri = const UriConverter();
  static TypeConverter<Uri, String> $convertericonUri = const UriConverter();
  static JsonTypeConverter2<ContentLanguage, String, String>
      $converterlanguage =
      const EnumNameConverter<ContentLanguage>(ContentLanguage.values);
}

class NewsSourceEntity extends DataClass
    implements Insertable<NewsSourceEntity> {
  final Uri uri;
  final Uri iconUri;
  final ContentLanguage language;
  final bool isShown;
  const NewsSourceEntity(
      {required this.uri,
      required this.iconUri,
      required this.language,
      required this.isShown});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['uri'] =
          Variable<String>($NewsSourceEntitiesTable.$converteruri.toSql(uri));
    }
    {
      map['icon_uri'] = Variable<String>(
          $NewsSourceEntitiesTable.$convertericonUri.toSql(iconUri));
    }
    {
      map['language'] = Variable<String>(
          $NewsSourceEntitiesTable.$converterlanguage.toSql(language));
    }
    map['is_shown'] = Variable<bool>(isShown);
    return map;
  }

  NewsSourceEntitiesCompanion toCompanion(bool nullToAbsent) {
    return NewsSourceEntitiesCompanion(
      uri: Value(uri),
      iconUri: Value(iconUri),
      language: Value(language),
      isShown: Value(isShown),
    );
  }

  factory NewsSourceEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NewsSourceEntity(
      uri: serializer.fromJson<Uri>(json['uri']),
      iconUri: serializer.fromJson<Uri>(json['iconUri']),
      language: $NewsSourceEntitiesTable.$converterlanguage
          .fromJson(serializer.fromJson<String>(json['language'])),
      isShown: serializer.fromJson<bool>(json['isShown']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uri': serializer.toJson<Uri>(uri),
      'iconUri': serializer.toJson<Uri>(iconUri),
      'language': serializer.toJson<String>(
          $NewsSourceEntitiesTable.$converterlanguage.toJson(language)),
      'isShown': serializer.toJson<bool>(isShown),
    };
  }

  NewsSourceEntity copyWith(
          {Uri? uri, Uri? iconUri, ContentLanguage? language, bool? isShown}) =>
      NewsSourceEntity(
        uri: uri ?? this.uri,
        iconUri: iconUri ?? this.iconUri,
        language: language ?? this.language,
        isShown: isShown ?? this.isShown,
      );
  NewsSourceEntity copyWithCompanion(NewsSourceEntitiesCompanion data) {
    return NewsSourceEntity(
      uri: data.uri.present ? data.uri.value : this.uri,
      iconUri: data.iconUri.present ? data.iconUri.value : this.iconUri,
      language: data.language.present ? data.language.value : this.language,
      isShown: data.isShown.present ? data.isShown.value : this.isShown,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NewsSourceEntity(')
          ..write('uri: $uri, ')
          ..write('iconUri: $iconUri, ')
          ..write('language: $language, ')
          ..write('isShown: $isShown')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uri, iconUri, language, isShown);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NewsSourceEntity &&
          other.uri == this.uri &&
          other.iconUri == this.iconUri &&
          other.language == this.language &&
          other.isShown == this.isShown);
}

class NewsSourceEntitiesCompanion extends UpdateCompanion<NewsSourceEntity> {
  final Value<Uri> uri;
  final Value<Uri> iconUri;
  final Value<ContentLanguage> language;
  final Value<bool> isShown;
  final Value<int> rowid;
  const NewsSourceEntitiesCompanion({
    this.uri = const Value.absent(),
    this.iconUri = const Value.absent(),
    this.language = const Value.absent(),
    this.isShown = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NewsSourceEntitiesCompanion.insert({
    required Uri uri,
    required Uri iconUri,
    required ContentLanguage language,
    required bool isShown,
    this.rowid = const Value.absent(),
  })  : uri = Value(uri),
        iconUri = Value(iconUri),
        language = Value(language),
        isShown = Value(isShown);
  static Insertable<NewsSourceEntity> custom({
    Expression<String>? uri,
    Expression<String>? iconUri,
    Expression<String>? language,
    Expression<bool>? isShown,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uri != null) 'uri': uri,
      if (iconUri != null) 'icon_uri': iconUri,
      if (language != null) 'language': language,
      if (isShown != null) 'is_shown': isShown,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NewsSourceEntitiesCompanion copyWith(
      {Value<Uri>? uri,
      Value<Uri>? iconUri,
      Value<ContentLanguage>? language,
      Value<bool>? isShown,
      Value<int>? rowid}) {
    return NewsSourceEntitiesCompanion(
      uri: uri ?? this.uri,
      iconUri: iconUri ?? this.iconUri,
      language: language ?? this.language,
      isShown: isShown ?? this.isShown,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uri.present) {
      map['uri'] = Variable<String>(
          $NewsSourceEntitiesTable.$converteruri.toSql(uri.value));
    }
    if (iconUri.present) {
      map['icon_uri'] = Variable<String>(
          $NewsSourceEntitiesTable.$convertericonUri.toSql(iconUri.value));
    }
    if (language.present) {
      map['language'] = Variable<String>(
          $NewsSourceEntitiesTable.$converterlanguage.toSql(language.value));
    }
    if (isShown.present) {
      map['is_shown'] = Variable<bool>(isShown.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NewsSourceEntitiesCompanion(')
          ..write('uri: $uri, ')
          ..write('iconUri: $iconUri, ')
          ..write('language: $language, ')
          ..write('isShown: $isShown, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $GalleryBaseEntitiesTable galleryBaseEntities =
      $GalleryBaseEntitiesTable(this);
  late final $GalleryImageEntitiesTable galleryImageEntities =
      $GalleryImageEntitiesTable(this);
  late final $GalleryVideoEntitiesTable galleryVideoEntities =
      $GalleryVideoEntitiesTable(this);
  late final $GalleryOtherEntitiesTable galleryOtherEntities =
      $GalleryOtherEntitiesTable(this);
  late final $GalleryEmptyEntitiesTable galleryEmptyEntities =
      $GalleryEmptyEntitiesTable(this);
  late final $GalleryInfoEntitiesTable galleryInfoEntities =
      $GalleryInfoEntitiesTable(this);
  late final $NewsSourceEntitiesTable newsSourceEntities =
      $NewsSourceEntitiesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        galleryBaseEntities,
        galleryImageEntities,
        galleryVideoEntities,
        galleryOtherEntities,
        galleryEmptyEntities,
        galleryInfoEntities,
        newsSourceEntities
      ];
}

typedef $$GalleryBaseEntitiesTableCreateCompanionBuilder
    = GalleryBaseEntitiesCompanion Function({
  Value<Date> date,
  Value<String?> copyright,
  required GalleryItemType type,
  required bool isFavorite,
});
typedef $$GalleryBaseEntitiesTableUpdateCompanionBuilder
    = GalleryBaseEntitiesCompanion Function({
  Value<Date> date,
  Value<String?> copyright,
  Value<GalleryItemType> type,
  Value<bool> isFavorite,
});

final class $$GalleryBaseEntitiesTableReferences extends BaseReferences<
    _$AppDatabase, $GalleryBaseEntitiesTable, GalleryBaseEntity> {
  $$GalleryBaseEntitiesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$GalleryImageEntitiesTable,
      List<GalleryImageEntity>> _galleryImageEntitiesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.galleryImageEntities,
          aliasName: $_aliasNameGenerator(
              db.galleryBaseEntities.date, db.galleryImageEntities.date));

  $$GalleryImageEntitiesTableProcessedTableManager
      get galleryImageEntitiesRefs {
    final manager =
        $$GalleryImageEntitiesTableTableManager($_db, $_db.galleryImageEntities)
            .filter((f) => f.date.date($_item.date));

    final cache =
        $_typedResult.readTableOrNull(_galleryImageEntitiesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$GalleryVideoEntitiesTable,
      List<GalleryVideoEntity>> _galleryVideoEntitiesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.galleryVideoEntities,
          aliasName: $_aliasNameGenerator(
              db.galleryBaseEntities.date, db.galleryVideoEntities.date));

  $$GalleryVideoEntitiesTableProcessedTableManager
      get galleryVideoEntitiesRefs {
    final manager =
        $$GalleryVideoEntitiesTableTableManager($_db, $_db.galleryVideoEntities)
            .filter((f) => f.date.date($_item.date));

    final cache =
        $_typedResult.readTableOrNull(_galleryVideoEntitiesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$GalleryOtherEntitiesTable,
      List<GalleryOtherEntity>> _galleryOtherEntitiesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.galleryOtherEntities,
          aliasName: $_aliasNameGenerator(
              db.galleryBaseEntities.date, db.galleryOtherEntities.date));

  $$GalleryOtherEntitiesTableProcessedTableManager
      get galleryOtherEntitiesRefs {
    final manager =
        $$GalleryOtherEntitiesTableTableManager($_db, $_db.galleryOtherEntities)
            .filter((f) => f.date.date($_item.date));

    final cache =
        $_typedResult.readTableOrNull(_galleryOtherEntitiesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$GalleryEmptyEntitiesTable,
      List<GalleryEmptyEntity>> _galleryEmptyEntitiesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.galleryEmptyEntities,
          aliasName: $_aliasNameGenerator(
              db.galleryBaseEntities.date, db.galleryEmptyEntities.date));

  $$GalleryEmptyEntitiesTableProcessedTableManager
      get galleryEmptyEntitiesRefs {
    final manager =
        $$GalleryEmptyEntitiesTableTableManager($_db, $_db.galleryEmptyEntities)
            .filter((f) => f.date.date($_item.date));

    final cache =
        $_typedResult.readTableOrNull(_galleryEmptyEntitiesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$GalleryInfoEntitiesTable, List<GalleryInfoEntity>>
      _galleryInfoEntitiesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.galleryInfoEntities,
              aliasName: $_aliasNameGenerator(
                  db.galleryBaseEntities.date, db.galleryInfoEntities.date));

  $$GalleryInfoEntitiesTableProcessedTableManager get galleryInfoEntitiesRefs {
    final manager =
        $$GalleryInfoEntitiesTableTableManager($_db, $_db.galleryInfoEntities)
            .filter((f) => f.date.date($_item.date));

    final cache =
        $_typedResult.readTableOrNull(_galleryInfoEntitiesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$GalleryBaseEntitiesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GalleryBaseEntitiesTable> {
  $$GalleryBaseEntitiesTableFilterComposer(super.$state);
  ColumnWithTypeConverterFilters<Date, Date, int> get date =>
      $state.composableBuilder(
          column: $state.table.date,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get copyright => $state.composableBuilder(
      column: $state.table.copyright,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<GalleryItemType, GalleryItemType, String>
      get type => $state.composableBuilder(
          column: $state.table.type,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<bool> get isFavorite => $state.composableBuilder(
      column: $state.table.isFavorite,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter galleryImageEntitiesRefs(
      ComposableFilter Function($$GalleryImageEntitiesTableFilterComposer f)
          f) {
    final $$GalleryImageEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryImageEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryImageEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryImageEntities,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }

  ComposableFilter galleryVideoEntitiesRefs(
      ComposableFilter Function($$GalleryVideoEntitiesTableFilterComposer f)
          f) {
    final $$GalleryVideoEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryVideoEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryVideoEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryVideoEntities,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }

  ComposableFilter galleryOtherEntitiesRefs(
      ComposableFilter Function($$GalleryOtherEntitiesTableFilterComposer f)
          f) {
    final $$GalleryOtherEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryOtherEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryOtherEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryOtherEntities,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }

  ComposableFilter galleryEmptyEntitiesRefs(
      ComposableFilter Function($$GalleryEmptyEntitiesTableFilterComposer f)
          f) {
    final $$GalleryEmptyEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryEmptyEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryEmptyEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryEmptyEntities,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }

  ComposableFilter galleryInfoEntitiesRefs(
      ComposableFilter Function($$GalleryInfoEntitiesTableFilterComposer f) f) {
    final $$GalleryInfoEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryInfoEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryInfoEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryInfoEntities,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }
}

class $$GalleryBaseEntitiesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GalleryBaseEntitiesTable> {
  $$GalleryBaseEntitiesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get copyright => $state.composableBuilder(
      column: $state.table.copyright,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isFavorite => $state.composableBuilder(
      column: $state.table.isFavorite,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$GalleryBaseEntitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GalleryBaseEntitiesTable,
    GalleryBaseEntity,
    $$GalleryBaseEntitiesTableFilterComposer,
    $$GalleryBaseEntitiesTableOrderingComposer,
    $$GalleryBaseEntitiesTableCreateCompanionBuilder,
    $$GalleryBaseEntitiesTableUpdateCompanionBuilder,
    (GalleryBaseEntity, $$GalleryBaseEntitiesTableReferences),
    GalleryBaseEntity,
    PrefetchHooks Function(
        {bool galleryImageEntitiesRefs,
        bool galleryVideoEntitiesRefs,
        bool galleryOtherEntitiesRefs,
        bool galleryEmptyEntitiesRefs,
        bool galleryInfoEntitiesRefs})> {
  $$GalleryBaseEntitiesTableTableManager(
      _$AppDatabase db, $GalleryBaseEntitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$GalleryBaseEntitiesTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$GalleryBaseEntitiesTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<Date> date = const Value.absent(),
            Value<String?> copyright = const Value.absent(),
            Value<GalleryItemType> type = const Value.absent(),
            Value<bool> isFavorite = const Value.absent(),
          }) =>
              GalleryBaseEntitiesCompanion(
            date: date,
            copyright: copyright,
            type: type,
            isFavorite: isFavorite,
          ),
          createCompanionCallback: ({
            Value<Date> date = const Value.absent(),
            Value<String?> copyright = const Value.absent(),
            required GalleryItemType type,
            required bool isFavorite,
          }) =>
              GalleryBaseEntitiesCompanion.insert(
            date: date,
            copyright: copyright,
            type: type,
            isFavorite: isFavorite,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GalleryBaseEntitiesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {galleryImageEntitiesRefs = false,
              galleryVideoEntitiesRefs = false,
              galleryOtherEntitiesRefs = false,
              galleryEmptyEntitiesRefs = false,
              galleryInfoEntitiesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (galleryImageEntitiesRefs) db.galleryImageEntities,
                if (galleryVideoEntitiesRefs) db.galleryVideoEntities,
                if (galleryOtherEntitiesRefs) db.galleryOtherEntities,
                if (galleryEmptyEntitiesRefs) db.galleryEmptyEntities,
                if (galleryInfoEntitiesRefs) db.galleryInfoEntities
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (galleryImageEntitiesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$GalleryBaseEntitiesTableReferences
                            ._galleryImageEntitiesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GalleryBaseEntitiesTableReferences(db, table, p0)
                                .galleryImageEntitiesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.date == item.date),
                        typedResults: items),
                  if (galleryVideoEntitiesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$GalleryBaseEntitiesTableReferences
                            ._galleryVideoEntitiesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GalleryBaseEntitiesTableReferences(db, table, p0)
                                .galleryVideoEntitiesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.date == item.date),
                        typedResults: items),
                  if (galleryOtherEntitiesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$GalleryBaseEntitiesTableReferences
                            ._galleryOtherEntitiesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GalleryBaseEntitiesTableReferences(db, table, p0)
                                .galleryOtherEntitiesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.date == item.date),
                        typedResults: items),
                  if (galleryEmptyEntitiesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$GalleryBaseEntitiesTableReferences
                            ._galleryEmptyEntitiesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GalleryBaseEntitiesTableReferences(db, table, p0)
                                .galleryEmptyEntitiesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.date == item.date),
                        typedResults: items),
                  if (galleryInfoEntitiesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$GalleryBaseEntitiesTableReferences
                            ._galleryInfoEntitiesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GalleryBaseEntitiesTableReferences(db, table, p0)
                                .galleryInfoEntitiesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.date == item.date),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$GalleryBaseEntitiesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GalleryBaseEntitiesTable,
    GalleryBaseEntity,
    $$GalleryBaseEntitiesTableFilterComposer,
    $$GalleryBaseEntitiesTableOrderingComposer,
    $$GalleryBaseEntitiesTableCreateCompanionBuilder,
    $$GalleryBaseEntitiesTableUpdateCompanionBuilder,
    (GalleryBaseEntity, $$GalleryBaseEntitiesTableReferences),
    GalleryBaseEntity,
    PrefetchHooks Function(
        {bool galleryImageEntitiesRefs,
        bool galleryVideoEntitiesRefs,
        bool galleryOtherEntitiesRefs,
        bool galleryEmptyEntitiesRefs,
        bool galleryInfoEntitiesRefs})>;
typedef $$GalleryImageEntitiesTableCreateCompanionBuilder
    = GalleryImageEntitiesCompanion Function({
  Value<Date> date,
  required Uri uri,
  required Uri hdUri,
  required Uri thumbUri,
  required double aspectRatio,
  required double aspectRatioThumb,
  required String blurHash,
  required String blurHashThumb,
});
typedef $$GalleryImageEntitiesTableUpdateCompanionBuilder
    = GalleryImageEntitiesCompanion Function({
  Value<Date> date,
  Value<Uri> uri,
  Value<Uri> hdUri,
  Value<Uri> thumbUri,
  Value<double> aspectRatio,
  Value<double> aspectRatioThumb,
  Value<String> blurHash,
  Value<String> blurHashThumb,
});

final class $$GalleryImageEntitiesTableReferences extends BaseReferences<
    _$AppDatabase, $GalleryImageEntitiesTable, GalleryImageEntity> {
  $$GalleryImageEntitiesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $GalleryBaseEntitiesTable _dateTable(_$AppDatabase db) =>
      db.galleryBaseEntities.createAlias($_aliasNameGenerator(
          db.galleryImageEntities.date, db.galleryBaseEntities.date));

  $$GalleryBaseEntitiesTableProcessedTableManager? get date {
    if ($_item.date == null) return null;
    final manager =
        $$GalleryBaseEntitiesTableTableManager($_db, $_db.galleryBaseEntities)
            .filter((f) => f.date($_item.date!));
    final item = $_typedResult.readTableOrNull(_dateTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$GalleryImageEntitiesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GalleryImageEntitiesTable> {
  $$GalleryImageEntitiesTableFilterComposer(super.$state);
  ColumnWithTypeConverterFilters<Uri, Uri, String> get uri =>
      $state.composableBuilder(
          column: $state.table.uri,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<Uri, Uri, String> get hdUri =>
      $state.composableBuilder(
          column: $state.table.hdUri,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<Uri, Uri, String> get thumbUri =>
      $state.composableBuilder(
          column: $state.table.thumbUri,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<double> get aspectRatio => $state.composableBuilder(
      column: $state.table.aspectRatio,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get aspectRatioThumb => $state.composableBuilder(
      column: $state.table.aspectRatioThumb,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get blurHash => $state.composableBuilder(
      column: $state.table.blurHash,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get blurHashThumb => $state.composableBuilder(
      column: $state.table.blurHashThumb,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$GalleryBaseEntitiesTableFilterComposer get date {
    final $$GalleryBaseEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryImageEntitiesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GalleryImageEntitiesTable> {
  $$GalleryImageEntitiesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get uri => $state.composableBuilder(
      column: $state.table.uri,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get hdUri => $state.composableBuilder(
      column: $state.table.hdUri,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get thumbUri => $state.composableBuilder(
      column: $state.table.thumbUri,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get aspectRatio => $state.composableBuilder(
      column: $state.table.aspectRatio,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get aspectRatioThumb => $state.composableBuilder(
      column: $state.table.aspectRatioThumb,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get blurHash => $state.composableBuilder(
      column: $state.table.blurHash,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get blurHashThumb => $state.composableBuilder(
      column: $state.table.blurHashThumb,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$GalleryBaseEntitiesTableOrderingComposer get date {
    final $$GalleryBaseEntitiesTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableOrderingComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryImageEntitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GalleryImageEntitiesTable,
    GalleryImageEntity,
    $$GalleryImageEntitiesTableFilterComposer,
    $$GalleryImageEntitiesTableOrderingComposer,
    $$GalleryImageEntitiesTableCreateCompanionBuilder,
    $$GalleryImageEntitiesTableUpdateCompanionBuilder,
    (GalleryImageEntity, $$GalleryImageEntitiesTableReferences),
    GalleryImageEntity,
    PrefetchHooks Function({bool date})> {
  $$GalleryImageEntitiesTableTableManager(
      _$AppDatabase db, $GalleryImageEntitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$GalleryImageEntitiesTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$GalleryImageEntitiesTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<Date> date = const Value.absent(),
            Value<Uri> uri = const Value.absent(),
            Value<Uri> hdUri = const Value.absent(),
            Value<Uri> thumbUri = const Value.absent(),
            Value<double> aspectRatio = const Value.absent(),
            Value<double> aspectRatioThumb = const Value.absent(),
            Value<String> blurHash = const Value.absent(),
            Value<String> blurHashThumb = const Value.absent(),
          }) =>
              GalleryImageEntitiesCompanion(
            date: date,
            uri: uri,
            hdUri: hdUri,
            thumbUri: thumbUri,
            aspectRatio: aspectRatio,
            aspectRatioThumb: aspectRatioThumb,
            blurHash: blurHash,
            blurHashThumb: blurHashThumb,
          ),
          createCompanionCallback: ({
            Value<Date> date = const Value.absent(),
            required Uri uri,
            required Uri hdUri,
            required Uri thumbUri,
            required double aspectRatio,
            required double aspectRatioThumb,
            required String blurHash,
            required String blurHashThumb,
          }) =>
              GalleryImageEntitiesCompanion.insert(
            date: date,
            uri: uri,
            hdUri: hdUri,
            thumbUri: thumbUri,
            aspectRatio: aspectRatio,
            aspectRatioThumb: aspectRatioThumb,
            blurHash: blurHash,
            blurHashThumb: blurHashThumb,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GalleryImageEntitiesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({date = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (date) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.date,
                    referencedTable:
                        $$GalleryImageEntitiesTableReferences._dateTable(db),
                    referencedColumn: $$GalleryImageEntitiesTableReferences
                        ._dateTable(db)
                        .date,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$GalleryImageEntitiesTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $GalleryImageEntitiesTable,
        GalleryImageEntity,
        $$GalleryImageEntitiesTableFilterComposer,
        $$GalleryImageEntitiesTableOrderingComposer,
        $$GalleryImageEntitiesTableCreateCompanionBuilder,
        $$GalleryImageEntitiesTableUpdateCompanionBuilder,
        (GalleryImageEntity, $$GalleryImageEntitiesTableReferences),
        GalleryImageEntity,
        PrefetchHooks Function({bool date})>;
typedef $$GalleryVideoEntitiesTableCreateCompanionBuilder
    = GalleryVideoEntitiesCompanion Function({
  Value<Date> date,
  required Uri uri,
});
typedef $$GalleryVideoEntitiesTableUpdateCompanionBuilder
    = GalleryVideoEntitiesCompanion Function({
  Value<Date> date,
  Value<Uri> uri,
});

final class $$GalleryVideoEntitiesTableReferences extends BaseReferences<
    _$AppDatabase, $GalleryVideoEntitiesTable, GalleryVideoEntity> {
  $$GalleryVideoEntitiesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $GalleryBaseEntitiesTable _dateTable(_$AppDatabase db) =>
      db.galleryBaseEntities.createAlias($_aliasNameGenerator(
          db.galleryVideoEntities.date, db.galleryBaseEntities.date));

  $$GalleryBaseEntitiesTableProcessedTableManager? get date {
    if ($_item.date == null) return null;
    final manager =
        $$GalleryBaseEntitiesTableTableManager($_db, $_db.galleryBaseEntities)
            .filter((f) => f.date($_item.date!));
    final item = $_typedResult.readTableOrNull(_dateTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$GalleryVideoEntitiesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GalleryVideoEntitiesTable> {
  $$GalleryVideoEntitiesTableFilterComposer(super.$state);
  ColumnWithTypeConverterFilters<Uri, Uri, String> get uri =>
      $state.composableBuilder(
          column: $state.table.uri,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  $$GalleryBaseEntitiesTableFilterComposer get date {
    final $$GalleryBaseEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryVideoEntitiesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GalleryVideoEntitiesTable> {
  $$GalleryVideoEntitiesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get uri => $state.composableBuilder(
      column: $state.table.uri,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$GalleryBaseEntitiesTableOrderingComposer get date {
    final $$GalleryBaseEntitiesTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableOrderingComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryVideoEntitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GalleryVideoEntitiesTable,
    GalleryVideoEntity,
    $$GalleryVideoEntitiesTableFilterComposer,
    $$GalleryVideoEntitiesTableOrderingComposer,
    $$GalleryVideoEntitiesTableCreateCompanionBuilder,
    $$GalleryVideoEntitiesTableUpdateCompanionBuilder,
    (GalleryVideoEntity, $$GalleryVideoEntitiesTableReferences),
    GalleryVideoEntity,
    PrefetchHooks Function({bool date})> {
  $$GalleryVideoEntitiesTableTableManager(
      _$AppDatabase db, $GalleryVideoEntitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$GalleryVideoEntitiesTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$GalleryVideoEntitiesTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<Date> date = const Value.absent(),
            Value<Uri> uri = const Value.absent(),
          }) =>
              GalleryVideoEntitiesCompanion(
            date: date,
            uri: uri,
          ),
          createCompanionCallback: ({
            Value<Date> date = const Value.absent(),
            required Uri uri,
          }) =>
              GalleryVideoEntitiesCompanion.insert(
            date: date,
            uri: uri,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GalleryVideoEntitiesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({date = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (date) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.date,
                    referencedTable:
                        $$GalleryVideoEntitiesTableReferences._dateTable(db),
                    referencedColumn: $$GalleryVideoEntitiesTableReferences
                        ._dateTable(db)
                        .date,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$GalleryVideoEntitiesTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $GalleryVideoEntitiesTable,
        GalleryVideoEntity,
        $$GalleryVideoEntitiesTableFilterComposer,
        $$GalleryVideoEntitiesTableOrderingComposer,
        $$GalleryVideoEntitiesTableCreateCompanionBuilder,
        $$GalleryVideoEntitiesTableUpdateCompanionBuilder,
        (GalleryVideoEntity, $$GalleryVideoEntitiesTableReferences),
        GalleryVideoEntity,
        PrefetchHooks Function({bool date})>;
typedef $$GalleryOtherEntitiesTableCreateCompanionBuilder
    = GalleryOtherEntitiesCompanion Function({
  Value<Date> date,
  required Uri uri,
});
typedef $$GalleryOtherEntitiesTableUpdateCompanionBuilder
    = GalleryOtherEntitiesCompanion Function({
  Value<Date> date,
  Value<Uri> uri,
});

final class $$GalleryOtherEntitiesTableReferences extends BaseReferences<
    _$AppDatabase, $GalleryOtherEntitiesTable, GalleryOtherEntity> {
  $$GalleryOtherEntitiesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $GalleryBaseEntitiesTable _dateTable(_$AppDatabase db) =>
      db.galleryBaseEntities.createAlias($_aliasNameGenerator(
          db.galleryOtherEntities.date, db.galleryBaseEntities.date));

  $$GalleryBaseEntitiesTableProcessedTableManager? get date {
    if ($_item.date == null) return null;
    final manager =
        $$GalleryBaseEntitiesTableTableManager($_db, $_db.galleryBaseEntities)
            .filter((f) => f.date($_item.date!));
    final item = $_typedResult.readTableOrNull(_dateTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$GalleryOtherEntitiesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GalleryOtherEntitiesTable> {
  $$GalleryOtherEntitiesTableFilterComposer(super.$state);
  ColumnWithTypeConverterFilters<Uri, Uri, String> get uri =>
      $state.composableBuilder(
          column: $state.table.uri,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  $$GalleryBaseEntitiesTableFilterComposer get date {
    final $$GalleryBaseEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryOtherEntitiesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GalleryOtherEntitiesTable> {
  $$GalleryOtherEntitiesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get uri => $state.composableBuilder(
      column: $state.table.uri,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$GalleryBaseEntitiesTableOrderingComposer get date {
    final $$GalleryBaseEntitiesTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableOrderingComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryOtherEntitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GalleryOtherEntitiesTable,
    GalleryOtherEntity,
    $$GalleryOtherEntitiesTableFilterComposer,
    $$GalleryOtherEntitiesTableOrderingComposer,
    $$GalleryOtherEntitiesTableCreateCompanionBuilder,
    $$GalleryOtherEntitiesTableUpdateCompanionBuilder,
    (GalleryOtherEntity, $$GalleryOtherEntitiesTableReferences),
    GalleryOtherEntity,
    PrefetchHooks Function({bool date})> {
  $$GalleryOtherEntitiesTableTableManager(
      _$AppDatabase db, $GalleryOtherEntitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$GalleryOtherEntitiesTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$GalleryOtherEntitiesTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<Date> date = const Value.absent(),
            Value<Uri> uri = const Value.absent(),
          }) =>
              GalleryOtherEntitiesCompanion(
            date: date,
            uri: uri,
          ),
          createCompanionCallback: ({
            Value<Date> date = const Value.absent(),
            required Uri uri,
          }) =>
              GalleryOtherEntitiesCompanion.insert(
            date: date,
            uri: uri,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GalleryOtherEntitiesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({date = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (date) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.date,
                    referencedTable:
                        $$GalleryOtherEntitiesTableReferences._dateTable(db),
                    referencedColumn: $$GalleryOtherEntitiesTableReferences
                        ._dateTable(db)
                        .date,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$GalleryOtherEntitiesTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $GalleryOtherEntitiesTable,
        GalleryOtherEntity,
        $$GalleryOtherEntitiesTableFilterComposer,
        $$GalleryOtherEntitiesTableOrderingComposer,
        $$GalleryOtherEntitiesTableCreateCompanionBuilder,
        $$GalleryOtherEntitiesTableUpdateCompanionBuilder,
        (GalleryOtherEntity, $$GalleryOtherEntitiesTableReferences),
        GalleryOtherEntity,
        PrefetchHooks Function({bool date})>;
typedef $$GalleryEmptyEntitiesTableCreateCompanionBuilder
    = GalleryEmptyEntitiesCompanion Function({
  Value<Date> date,
});
typedef $$GalleryEmptyEntitiesTableUpdateCompanionBuilder
    = GalleryEmptyEntitiesCompanion Function({
  Value<Date> date,
});

final class $$GalleryEmptyEntitiesTableReferences extends BaseReferences<
    _$AppDatabase, $GalleryEmptyEntitiesTable, GalleryEmptyEntity> {
  $$GalleryEmptyEntitiesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $GalleryBaseEntitiesTable _dateTable(_$AppDatabase db) =>
      db.galleryBaseEntities.createAlias($_aliasNameGenerator(
          db.galleryEmptyEntities.date, db.galleryBaseEntities.date));

  $$GalleryBaseEntitiesTableProcessedTableManager? get date {
    if ($_item.date == null) return null;
    final manager =
        $$GalleryBaseEntitiesTableTableManager($_db, $_db.galleryBaseEntities)
            .filter((f) => f.date($_item.date!));
    final item = $_typedResult.readTableOrNull(_dateTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$GalleryEmptyEntitiesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GalleryEmptyEntitiesTable> {
  $$GalleryEmptyEntitiesTableFilterComposer(super.$state);
  $$GalleryBaseEntitiesTableFilterComposer get date {
    final $$GalleryBaseEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryEmptyEntitiesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GalleryEmptyEntitiesTable> {
  $$GalleryEmptyEntitiesTableOrderingComposer(super.$state);
  $$GalleryBaseEntitiesTableOrderingComposer get date {
    final $$GalleryBaseEntitiesTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableOrderingComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryEmptyEntitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GalleryEmptyEntitiesTable,
    GalleryEmptyEntity,
    $$GalleryEmptyEntitiesTableFilterComposer,
    $$GalleryEmptyEntitiesTableOrderingComposer,
    $$GalleryEmptyEntitiesTableCreateCompanionBuilder,
    $$GalleryEmptyEntitiesTableUpdateCompanionBuilder,
    (GalleryEmptyEntity, $$GalleryEmptyEntitiesTableReferences),
    GalleryEmptyEntity,
    PrefetchHooks Function({bool date})> {
  $$GalleryEmptyEntitiesTableTableManager(
      _$AppDatabase db, $GalleryEmptyEntitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$GalleryEmptyEntitiesTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$GalleryEmptyEntitiesTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<Date> date = const Value.absent(),
          }) =>
              GalleryEmptyEntitiesCompanion(
            date: date,
          ),
          createCompanionCallback: ({
            Value<Date> date = const Value.absent(),
          }) =>
              GalleryEmptyEntitiesCompanion.insert(
            date: date,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GalleryEmptyEntitiesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({date = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (date) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.date,
                    referencedTable:
                        $$GalleryEmptyEntitiesTableReferences._dateTable(db),
                    referencedColumn: $$GalleryEmptyEntitiesTableReferences
                        ._dateTable(db)
                        .date,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$GalleryEmptyEntitiesTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $GalleryEmptyEntitiesTable,
        GalleryEmptyEntity,
        $$GalleryEmptyEntitiesTableFilterComposer,
        $$GalleryEmptyEntitiesTableOrderingComposer,
        $$GalleryEmptyEntitiesTableCreateCompanionBuilder,
        $$GalleryEmptyEntitiesTableUpdateCompanionBuilder,
        (GalleryEmptyEntity, $$GalleryEmptyEntitiesTableReferences),
        GalleryEmptyEntity,
        PrefetchHooks Function({bool date})>;
typedef $$GalleryInfoEntitiesTableCreateCompanionBuilder
    = GalleryInfoEntitiesCompanion Function({
  required Date date,
  required ContentLanguage language,
  required ContentLanguage originalLanguage,
  required String title,
  required String explanation,
  Value<int> rowid,
});
typedef $$GalleryInfoEntitiesTableUpdateCompanionBuilder
    = GalleryInfoEntitiesCompanion Function({
  Value<Date> date,
  Value<ContentLanguage> language,
  Value<ContentLanguage> originalLanguage,
  Value<String> title,
  Value<String> explanation,
  Value<int> rowid,
});

final class $$GalleryInfoEntitiesTableReferences extends BaseReferences<
    _$AppDatabase, $GalleryInfoEntitiesTable, GalleryInfoEntity> {
  $$GalleryInfoEntitiesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $GalleryBaseEntitiesTable _dateTable(_$AppDatabase db) =>
      db.galleryBaseEntities.createAlias($_aliasNameGenerator(
          db.galleryInfoEntities.date, db.galleryBaseEntities.date));

  $$GalleryBaseEntitiesTableProcessedTableManager? get date {
    if ($_item.date == null) return null;
    final manager =
        $$GalleryBaseEntitiesTableTableManager($_db, $_db.galleryBaseEntities)
            .filter((f) => f.date($_item.date!));
    final item = $_typedResult.readTableOrNull(_dateTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$GalleryInfoEntitiesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GalleryInfoEntitiesTable> {
  $$GalleryInfoEntitiesTableFilterComposer(super.$state);
  ColumnWithTypeConverterFilters<ContentLanguage, ContentLanguage, String>
      get language => $state.composableBuilder(
          column: $state.table.language,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<ContentLanguage, ContentLanguage, String>
      get originalLanguage => $state.composableBuilder(
          column: $state.table.originalLanguage,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get explanation => $state.composableBuilder(
      column: $state.table.explanation,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$GalleryBaseEntitiesTableFilterComposer get date {
    final $$GalleryBaseEntitiesTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryInfoEntitiesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GalleryInfoEntitiesTable> {
  $$GalleryInfoEntitiesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get originalLanguage => $state.composableBuilder(
      column: $state.table.originalLanguage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get explanation => $state.composableBuilder(
      column: $state.table.explanation,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$GalleryBaseEntitiesTableOrderingComposer get date {
    final $$GalleryBaseEntitiesTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.date,
            referencedTable: $state.db.galleryBaseEntities,
            getReferencedColumn: (t) => t.date,
            builder: (joinBuilder, parentComposers) =>
                $$GalleryBaseEntitiesTableOrderingComposer(ComposerState(
                    $state.db,
                    $state.db.galleryBaseEntities,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$GalleryInfoEntitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GalleryInfoEntitiesTable,
    GalleryInfoEntity,
    $$GalleryInfoEntitiesTableFilterComposer,
    $$GalleryInfoEntitiesTableOrderingComposer,
    $$GalleryInfoEntitiesTableCreateCompanionBuilder,
    $$GalleryInfoEntitiesTableUpdateCompanionBuilder,
    (GalleryInfoEntity, $$GalleryInfoEntitiesTableReferences),
    GalleryInfoEntity,
    PrefetchHooks Function({bool date})> {
  $$GalleryInfoEntitiesTableTableManager(
      _$AppDatabase db, $GalleryInfoEntitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$GalleryInfoEntitiesTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$GalleryInfoEntitiesTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<Date> date = const Value.absent(),
            Value<ContentLanguage> language = const Value.absent(),
            Value<ContentLanguage> originalLanguage = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> explanation = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GalleryInfoEntitiesCompanion(
            date: date,
            language: language,
            originalLanguage: originalLanguage,
            title: title,
            explanation: explanation,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required Date date,
            required ContentLanguage language,
            required ContentLanguage originalLanguage,
            required String title,
            required String explanation,
            Value<int> rowid = const Value.absent(),
          }) =>
              GalleryInfoEntitiesCompanion.insert(
            date: date,
            language: language,
            originalLanguage: originalLanguage,
            title: title,
            explanation: explanation,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GalleryInfoEntitiesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({date = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (date) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.date,
                    referencedTable:
                        $$GalleryInfoEntitiesTableReferences._dateTable(db),
                    referencedColumn: $$GalleryInfoEntitiesTableReferences
                        ._dateTable(db)
                        .date,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$GalleryInfoEntitiesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GalleryInfoEntitiesTable,
    GalleryInfoEntity,
    $$GalleryInfoEntitiesTableFilterComposer,
    $$GalleryInfoEntitiesTableOrderingComposer,
    $$GalleryInfoEntitiesTableCreateCompanionBuilder,
    $$GalleryInfoEntitiesTableUpdateCompanionBuilder,
    (GalleryInfoEntity, $$GalleryInfoEntitiesTableReferences),
    GalleryInfoEntity,
    PrefetchHooks Function({bool date})>;
typedef $$NewsSourceEntitiesTableCreateCompanionBuilder
    = NewsSourceEntitiesCompanion Function({
  required Uri uri,
  required Uri iconUri,
  required ContentLanguage language,
  required bool isShown,
  Value<int> rowid,
});
typedef $$NewsSourceEntitiesTableUpdateCompanionBuilder
    = NewsSourceEntitiesCompanion Function({
  Value<Uri> uri,
  Value<Uri> iconUri,
  Value<ContentLanguage> language,
  Value<bool> isShown,
  Value<int> rowid,
});

class $$NewsSourceEntitiesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $NewsSourceEntitiesTable> {
  $$NewsSourceEntitiesTableFilterComposer(super.$state);
  ColumnWithTypeConverterFilters<Uri, Uri, String> get uri =>
      $state.composableBuilder(
          column: $state.table.uri,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<Uri, Uri, String> get iconUri =>
      $state.composableBuilder(
          column: $state.table.iconUri,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<ContentLanguage, ContentLanguage, String>
      get language => $state.composableBuilder(
          column: $state.table.language,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<bool> get isShown => $state.composableBuilder(
      column: $state.table.isShown,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$NewsSourceEntitiesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $NewsSourceEntitiesTable> {
  $$NewsSourceEntitiesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get uri => $state.composableBuilder(
      column: $state.table.uri,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get iconUri => $state.composableBuilder(
      column: $state.table.iconUri,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isShown => $state.composableBuilder(
      column: $state.table.isShown,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$NewsSourceEntitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NewsSourceEntitiesTable,
    NewsSourceEntity,
    $$NewsSourceEntitiesTableFilterComposer,
    $$NewsSourceEntitiesTableOrderingComposer,
    $$NewsSourceEntitiesTableCreateCompanionBuilder,
    $$NewsSourceEntitiesTableUpdateCompanionBuilder,
    (
      NewsSourceEntity,
      BaseReferences<_$AppDatabase, $NewsSourceEntitiesTable, NewsSourceEntity>
    ),
    NewsSourceEntity,
    PrefetchHooks Function()> {
  $$NewsSourceEntitiesTableTableManager(
      _$AppDatabase db, $NewsSourceEntitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$NewsSourceEntitiesTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$NewsSourceEntitiesTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<Uri> uri = const Value.absent(),
            Value<Uri> iconUri = const Value.absent(),
            Value<ContentLanguage> language = const Value.absent(),
            Value<bool> isShown = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NewsSourceEntitiesCompanion(
            uri: uri,
            iconUri: iconUri,
            language: language,
            isShown: isShown,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required Uri uri,
            required Uri iconUri,
            required ContentLanguage language,
            required bool isShown,
            Value<int> rowid = const Value.absent(),
          }) =>
              NewsSourceEntitiesCompanion.insert(
            uri: uri,
            iconUri: iconUri,
            language: language,
            isShown: isShown,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NewsSourceEntitiesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NewsSourceEntitiesTable,
    NewsSourceEntity,
    $$NewsSourceEntitiesTableFilterComposer,
    $$NewsSourceEntitiesTableOrderingComposer,
    $$NewsSourceEntitiesTableCreateCompanionBuilder,
    $$NewsSourceEntitiesTableUpdateCompanionBuilder,
    (
      NewsSourceEntity,
      BaseReferences<_$AppDatabase, $NewsSourceEntitiesTable, NewsSourceEntity>
    ),
    NewsSourceEntity,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$GalleryBaseEntitiesTableTableManager get galleryBaseEntities =>
      $$GalleryBaseEntitiesTableTableManager(_db, _db.galleryBaseEntities);
  $$GalleryImageEntitiesTableTableManager get galleryImageEntities =>
      $$GalleryImageEntitiesTableTableManager(_db, _db.galleryImageEntities);
  $$GalleryVideoEntitiesTableTableManager get galleryVideoEntities =>
      $$GalleryVideoEntitiesTableTableManager(_db, _db.galleryVideoEntities);
  $$GalleryOtherEntitiesTableTableManager get galleryOtherEntities =>
      $$GalleryOtherEntitiesTableTableManager(_db, _db.galleryOtherEntities);
  $$GalleryEmptyEntitiesTableTableManager get galleryEmptyEntities =>
      $$GalleryEmptyEntitiesTableTableManager(_db, _db.galleryEmptyEntities);
  $$GalleryInfoEntitiesTableTableManager get galleryInfoEntities =>
      $$GalleryInfoEntitiesTableTableManager(_db, _db.galleryInfoEntities);
  $$NewsSourceEntitiesTableTableManager get newsSourceEntities =>
      $$NewsSourceEntitiesTableTableManager(_db, _db.newsSourceEntities);
}
