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
        _remoteEnglishGalleryDataSource = remoteGalleryDataSource,
        _remoteTranslationDataSource = remoteTranslationDataSource;

  final LocalGalleryDataSource _localGalleryDataSource;
  final RemoteGalleryDataSource _remoteEnglishGalleryDataSource;
  final RemoteTranslationDataSource _remoteTranslationDataSource;

  @override
  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  }) async {
    if (language == GalleryItemLanguage.english) {
      return _getEnglishItems(
        startDate: startDate,
        endDate: endDate,
      );
    }

    return _getNonEnglishItems(
      startDate: startDate,
      endDate: endDate,
      language: language,
    );
  }

  @override
  Future<GalleryItem> getLatestItem({
    required GalleryItemLanguage language,
  }) async {
    final englishItem = await _remoteEnglishGalleryDataSource.getLatestItem();

    await _localGalleryDataSource.cacheItems(
      galleryItems: [englishItem],
    );

    if (language == GalleryItemLanguage.english) {
      return englishItem;
    }

    final items = await _getNonEnglishItems(
      startDate: englishItem.date,
      endDate: englishItem.date,
      language: language,
    );

    return items.first;
  }

  Future<List<GalleryItem>> _getEnglishItems({
    required Date startDate,
    required Date endDate,
  }) async {
    final cachedItems = await _localGalleryDataSource.getItems(
      startDate: startDate,
      endDate: endDate,
      language: GalleryItemLanguage.english,
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
        await _remoteEnglishGalleryDataSource.getGalleryItems(
          startDate: uncachedPeriod.startDate,
          endDate: uncachedPeriod.endDate,
        ),
      );
    }

    return uncachedItems;
  }

  Future<List<GalleryItem>> _getNonEnglishItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  }) async {
    final cachedItems = await _localGalleryDataSource.getItems(
      startDate: startDate,
      endDate: endDate,
      language: language,
    );

    final englishItems = await _getEnglishItemsForTranslate(
      startDate: startDate,
      endDate: endDate,
      cachedItems: cachedItems,
    );

    final translatedItems = await _translateItems(
      englishItems: englishItems,
      language: language,
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

  Future<List<GalleryItem>> _getEnglishItemsForTranslate({
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
        await _getEnglishItems(
          startDate: uncachedPeriod.startDate,
          endDate: uncachedPeriod.endDate,
        ),
      );
    }
    return englishItems;
  }

  Future<List<GalleryItem>> _translateItems({
    required List<GalleryItem> englishItems,
    required GalleryItemLanguage language,
  }) async {
    final translatedItems = <GalleryItem>[];

    for (final englishItem in englishItems) {
      final textToTranslate = [
        englishItem.title,
        englishItem.explanation,
      ];

      final translatedText = await _remoteTranslationDataSource.translateText(
        source: textToTranslate,
        sourceLanguage: GalleryItemLanguage.english.languageCode,
        targetLanguage: language.languageCode,
      );

      translatedItems.add(
        englishItem.copyWith(
          title: translatedText[0],
          explanation: translatedText[1],
          language: language,
        ),
      );
    }

    return translatedItems;
  }
}

extension _DateListX on List<Date> {
  List<Date> difference(Iterable<Date> other) {
    return toSet().difference(other.toSet()).toList();
  }

  List<_Period> toPeriods() {
    if (isEmpty) {
      return [];
    }

    if (length == 1) {
      return [_Period(startDate: first, endDate: first)];
    }

    final sortedList = List<Date>.from(this, growable: false)
      ..sort((a, b) => a.compareTo(b));

    final periods = <_Period>[];

    var start = sortedList.first;
    var end = start;

    for (var i = 1; i < sortedList.length; ++i) {
      if (sortedList[i].difference(end).inDays == 1) {
        end = sortedList[i];

        if (i == sortedList.length - 1) {
          periods.add(_Period(startDate: start, endDate: end));
        }
      } else {
        periods.add(_Period(startDate: start, endDate: end));
        start = sortedList[i];
        end = start;
      }
    }

    return periods;
  }
}

class _Period {
  _Period({
    required this.startDate,
    required this.endDate,
  });

  final Date startDate;
  final Date endDate;
}
