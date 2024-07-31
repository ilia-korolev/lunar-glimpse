import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';

abstract interface class GalleryRepository {
  const GalleryRepository();

  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required ContentLanguage language,
  });

  Future<GalleryItem> getLatestItem({
    required ContentLanguage language,
  });
}

class GalleryRepositoryImpl implements GalleryRepository {
  GalleryRepositoryImpl({
    required LocalGalleryDataSource localDataSource,
    required RemoteBasicGalleryDataSource remoteDataSource,
    required RemoteGalleryTranslationDataSource translationDataSource,
    required RemoteGalleryMapperDataSource mapperDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _translationDataSource = translationDataSource,
        _mapperDataSource = mapperDataSource;

  final LocalGalleryDataSource _localDataSource;
  final RemoteBasicGalleryDataSource _remoteDataSource;
  final RemoteGalleryTranslationDataSource _translationDataSource;
  final RemoteGalleryMapperDataSource _mapperDataSource;

  @override
  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required ContentLanguage language,
  }) async {
    final cached = await _localDataSource.getItems(
      startDate: startDate,
      endDate: endDate,
      language: language,
    );

    final dates = _generateDateList(startDate, endDate);
    final missedDates = _getMissedDates(cached, dates);

    final needsTranslation = language != _remoteDataSource.language;

    final items = (!needsTranslation
        ? await _fetchAndCacheItems(
            missedDates: missedDates,
            cached: cached,
          )
        : await _fetchTranslateAndCacheItems(
            missedDates: missedDates,
            translatedCached: cached,
            language: language,
          ))
      ..sort((a, b) => a.date.compareTo(b.date));

    return items;
  }

  @override
  Future<GalleryItem> getLatestItem({
    required ContentLanguage language,
  }) async {
    final basic = await _remoteDataSource.getLatestItem();
    final cached = await _localDataSource.getItem(
      date: basic.date,
      language: language,
    );

    if (cached != null) {
      return cached;
    }

    final needsTranslation = language != _remoteDataSource.language;

    final item = !needsTranslation
        ? await _mapAndCacheItem(
            basic: basic,
            language: language,
          )
        : await _translateAndCacheItem(
            basic: basic,
            language: language,
          );

    return item;
  }

  List<Date> _generateDateList(Date startDate, Date endDate) {
    final count = endDate.difference(startDate).inDays + 1;

    return List<Date>.generate(
      count,
      (index) => startDate.add(Duration(days: index)),
      growable: false,
    );
  }

  List<Date> _getMissedDates(List<GalleryItem> items, List<Date> dates) {
    final cachedDates = items.map((e) => e.date).toSet();
    return dates.where((date) => !cachedDates.contains(date)).toList();
  }

  Future<List<GalleryItem>> _fetchAndCacheItems({
    required List<Date> missedDates,
    required List<GalleryItem> cached,
  }) async {
    final missedPeriods = missedDates.toPeriods();
    final basic = <BasicGalleryItem>[];

    for (final period in missedPeriods) {
      basic.addAll(
        await _remoteDataSource.getGalleryItems(
          startDate: period.startDate,
          endDate: period.endDate,
        ),
      );
    }

    final uncached = await Future.wait(
      basic.map(
        (b) => _mapperDataSource.map(
          basic: b,
          language: _remoteDataSource.language,
        ),
      ),
    );

    await _localDataSource.cacheItems(galleryItems: uncached);

    return [...cached, ...uncached];
  }

  Future<List<GalleryItem>> _fetchTranslateAndCacheItems({
    required List<Date> missedDates,
    required List<GalleryItem> translatedCached,
    required ContentLanguage language,
  }) async {
    final missedPeriods = missedDates.toPeriods();
    final untranslatedCached = <GalleryItem>[];

    for (final period in missedPeriods) {
      untranslatedCached.addAll(
        await _localDataSource.getItems(
          startDate: period.startDate,
          endDate: period.endDate,
          language: _remoteDataSource.language,
        ),
      );
    }
    final untranslatedUncachedDates =
        _getMissedDates(untranslatedCached, missedDates);

    final untranslated = await _fetchAndCacheItems(
      missedDates: untranslatedUncachedDates,
      cached: untranslatedCached,
    );

    final translatedUncached = await _translationDataSource.translateItems(
      items: untranslated,
      sourceLanguage: _remoteDataSource.language,
      targetLanguage: language,
    );

    await _localDataSource.cacheItems(galleryItems: translatedUncached);

    return [...translatedCached, ...translatedUncached];
  }

  Future<GalleryItem> _mapAndCacheItem({
    required BasicGalleryItem basic,
    required ContentLanguage language,
  }) async {
    final item = await _mapperDataSource.map(
      basic: basic,
      language: language,
    );

    await _localDataSource.cacheItems(galleryItems: [item]);
    return item;
  }

  Future<GalleryItem> _translateAndCacheItem({
    required BasicGalleryItem basic,
    required ContentLanguage language,
  }) async {
    var item = await _localDataSource.getItem(
      date: basic.date,
      language: _remoteDataSource.language,
    );

    item ??= await _mapAndCacheItem(basic: basic, language: language);

    final translated = await _translationDataSource.translateItem(
      item: item,
      sourceLanguage: _remoteDataSource.language,
      targetLanguage: language,
    );

    await _localDataSource.cacheItems(galleryItems: [translated]);
    return translated;
  }
}
