import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';

abstract interface class GalleryRepository {
  const GalleryRepository();

  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  });

  Future<GalleryItem> getLatestItem({
    required GalleryItemLanguage language,
  });
}

class GalleryRepositoryImpl implements GalleryRepository {
  GalleryRepositoryImpl({
    required LocalGalleryDataSource localGalleryDataSource,
    required RemoteGalleryDataSource remoteGalleryDataSource,
    required RemoteTranslationDataSource remoteTranslationDataSource,
  })  : _localGalleryDataSource = localGalleryDataSource,
        _remoteGalleryDataSource = remoteGalleryDataSource,
        _remoteTranslationDataSource = remoteTranslationDataSource;

  final LocalGalleryDataSource _localGalleryDataSource;
  final RemoteGalleryDataSource _remoteGalleryDataSource;
  final RemoteTranslationDataSource _remoteTranslationDataSource;

  @override
  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  }) async {
    if (language == _remoteGalleryDataSource.language) {
      return _getItemsInOriginalLanguage(
        startDate: startDate,
        endDate: endDate,
      );
    }

    return _getTranslatedItems(
      startDate: startDate,
      endDate: endDate,
      language: language,
    );
  }

  @override
  Future<GalleryItem> getLatestItem({
    required GalleryItemLanguage language,
  }) async {
    final itemInOriginalLanguage =
        await _remoteGalleryDataSource.getLatestItem();

    await _localGalleryDataSource.cacheItems(
      galleryItems: [itemInOriginalLanguage],
    );

    if (language == _remoteGalleryDataSource.language) {
      return itemInOriginalLanguage;
    }

    final items = await _getTranslatedItems(
      startDate: itemInOriginalLanguage.date,
      endDate: itemInOriginalLanguage.date,
      language: language,
    );

    return items.first;
  }

  Future<List<GalleryItem>> _getItemsInOriginalLanguage({
    required Date startDate,
    required Date endDate,
  }) async {
    final cachedItems = await _localGalleryDataSource.getItems(
      startDate: startDate,
      endDate: endDate,
      language: _remoteGalleryDataSource.language,
    );

    final uncachedItems = await _getUncachedEnglishItems(
      endDate: endDate,
      startDate: startDate,
      cachedItems: cachedItems,
    );

    await _localGalleryDataSource.cacheItems(
      galleryItems: uncachedItems,
    );

    final items = [
      ...cachedItems,
      ...uncachedItems,
    ]..sort((a, b) => a.date.compareTo(b.date));

    return items;
  }

  Future<List<GalleryItem>> _getUncachedEnglishItems({
    required Date endDate,
    required Date startDate,
    required List<GalleryItem> cachedItems,
  }) async {
    final count = endDate.difference(startDate).inDays + 1;

    final requestedDates = List<Date>.generate(
      count,
      (index) => startDate.add(Duration(days: index)),
      growable: false,
    );

    final cachedDates = cachedItems.map((e) => e.date);
    final uncachedDates = requestedDates.difference(cachedDates);
    final uncachedPeriods = uncachedDates.toPeriods();

    final uncachedItems = <GalleryItem>[];

    for (final uncachedPeriod in uncachedPeriods) {
      uncachedItems.addAll(
        await _remoteGalleryDataSource.getGalleryItems(
          startDate: uncachedPeriod.startDate,
          endDate: uncachedPeriod.endDate,
        ),
      );
    }

    return uncachedItems;
  }

  Future<List<GalleryItem>> _getTranslatedItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  }) async {
    final cachedItems = await _localGalleryDataSource.getItems(
      startDate: startDate,
      endDate: endDate,
      language: language,
    );

    final itemsInOriginalLanguage = await _getItemsToTranslate(
      startDate: startDate,
      endDate: endDate,
      cachedItems: cachedItems,
    );

    final translatedItems = await _translateItems(
      englishItems: itemsInOriginalLanguage,
      sourceLanguage: _remoteGalleryDataSource.language,
      targetLanguage: language,
    );

    await _localGalleryDataSource.cacheItems(
      galleryItems: translatedItems,
    );

    final items = [
      ...cachedItems,
      ...translatedItems,
    ]..sort((a, b) => a.date.compareTo(b.date));

    return items;
  }

  Future<List<GalleryItem>> _getItemsToTranslate({
    required Date startDate,
    required Date endDate,
    required List<GalleryItem> cachedItems,
  }) async {
    final count = endDate.difference(startDate).inDays + 1;

    final requestedDates = List<Date>.generate(
      count,
      (index) => startDate.add(Duration(days: index)),
      growable: false,
    );

    final cachedDates = cachedItems.map((e) => e.date);
    final uncachedDates = requestedDates.difference(cachedDates);
    final uncachedPeriods = uncachedDates.toPeriods();

    final englishItems = <GalleryItem>[];

    for (final uncachedPeriod in uncachedPeriods) {
      englishItems.addAll(
        await _getItemsInOriginalLanguage(
          startDate: uncachedPeriod.startDate,
          endDate: uncachedPeriod.endDate,
        ),
      );
    }
    return englishItems;
  }

  Future<List<GalleryItem>> _translateItems({
    required List<GalleryItem> englishItems,
    required GalleryItemLanguage sourceLanguage,
    required GalleryItemLanguage targetLanguage,
  }) async {
    final translatedItems = <GalleryItem>[];

    for (final englishItem in englishItems) {
      final textToTranslate = [
        englishItem.title,
        englishItem.explanation,
      ];

      final translatedText = await _remoteTranslationDataSource.translateText(
        source: textToTranslate,
        sourceLanguage: sourceLanguage.languageCode,
        targetLanguage: targetLanguage.languageCode,
      );

      translatedItems.add(
        englishItem.copyWith(
          title: translatedText[0],
          explanation: translatedText[1],
          language: targetLanguage,
        ),
      );
    }

    return translatedItems;
  }
}
