import 'dart:async';

import 'package:astro_common/astro_common.dart';
import 'package:flutter_astronomy/data/_export.dart';

abstract interface class GalleryRepository {
  const GalleryRepository();

  Stream<List<GalleryItem>> get changes;

  Future<List<GalleryItem>> getItems({
    required Date endDate,
    required int count,
    required GalleryItemLanguage language,
  });

  Future<GalleryItem> getItem({
    required Date date,
    required GalleryItemLanguage language,
  });

  Future<List<GalleryItem>> getLatestItems({
    required int count,
    required GalleryItemLanguage language,
  });

  Future<void> toggleFavorite({
    required GalleryItem galleryItem,
  });

  Future<List<GalleryItem>> getFavorites({
    required GalleryItemLanguage language,
  });
}

class GalleryRepositoryImpl implements GalleryRepository {
  GalleryRepositoryImpl({
    required LocalGalleryDataSource localGalleryDataSource,
    required RemoteMultiLanguageGalleryDataSource remoteGalleryDataSource,
  })  : _localGalleryDataSource = localGalleryDataSource,
        _remoteGalleryDataSource = remoteGalleryDataSource;

  final LocalGalleryDataSource _localGalleryDataSource;
  final RemoteMultiLanguageGalleryDataSource _remoteGalleryDataSource;

  final _changesController = StreamController<List<GalleryItem>>.broadcast();

  @override
  Stream<List<GalleryItem>> get changes => _changesController.stream;

  @override
  Future<List<GalleryItem>> getLatestItems({
    required int count,
    required GalleryItemLanguage language,
  }) async {
    final latestItem = await _remoteGalleryDataSource.getLatestItem(
      language: language,
    );

    await _localGalleryDataSource.cacheItems(
      galleryItems: [latestItem],
    );

    return getItems(
      endDate: latestItem.date,
      count: count,
      language: language,
    );
  }

  @override
  Future<List<GalleryItem>> getItems({
    required Date endDate,
    required int count,
    required GalleryItemLanguage language,
  }) async {
    final startDate = endDate.subtract(Duration(days: count - 1));

    return _getItems(
      startDate: startDate,
      endDate: endDate,
      language: language,
    );
  }

  @override
  Future<GalleryItem> getItem({
    required Date date,
    required GalleryItemLanguage language,
  }) async {
    final item = await getItems(
      endDate: date,
      count: 1,
      language: language,
    );

    return item.single;
  }

  /// This is an update operation
  /// Listen changes using the [changes] Stream
  @override
  Future<void> toggleFavorite({
    required GalleryItem galleryItem,
  }) async {
    final updatedItem =
        galleryItem.copyWith(isFavorite: !galleryItem.isFavorite);

    await _localGalleryDataSource.cacheItems(
      galleryItems: [updatedItem],
      onConflictUpdate: true,
    );

    _changesController.add([updatedItem]);
  }

  @override
  Future<List<GalleryItem>> getFavorites({
    required GalleryItemLanguage language,
  }) async {
    final dates = await _localGalleryDataSource.getFavoriteDates();
    final periods = dates.toPeriods();

    final favorites = <GalleryItem>[];

    for (final period in periods) {
      final periodFavorites = await _getItems(
        startDate: period.startDate,
        endDate: period.endDate,
        language: language,
      );

      favorites.addAll(periodFavorites);
    }

    favorites.sort((a, b) => b.date.compareTo(a.date));

    return favorites;
  }

  Future<List<GalleryItem>> _getItems({
    required Date startDate,
    required Date endDate,
    required GalleryItemLanguage language,
  }) async {
    final cachedItems = await _localGalleryDataSource.getItems(
      startDate: startDate,
      endDate: endDate,
      language: language,
    );

    final uncachedItems = await _getUncachedItems(
      endDate: endDate,
      startDate: startDate,
      cachedItems: cachedItems,
      language: language,
    );

    await _localGalleryDataSource.cacheItems(
      galleryItems: uncachedItems,
    );

    final items = [
      ...cachedItems,
      ...uncachedItems,
    ]..sort((a, b) => b.date.compareTo(a.date));

    return items;
  }

  Future<List<GalleryItem>> _getUncachedItems({
    required Date endDate,
    required Date startDate,
    required List<GalleryItem> cachedItems,
    required GalleryItemLanguage language,
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
          language: language,
        ),
      );
    }

    return uncachedItems;
  }
}
