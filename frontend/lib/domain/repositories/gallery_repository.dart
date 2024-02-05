import 'dart:async';

import 'package:astro_common/astro_common.dart';
import 'package:flutter_astronomy/data/_export.dart';

abstract interface class GalleryRepository {
  const GalleryRepository();

  Stream<List<GalleryItem>> get changes;

  Future<List<GalleryItem>> getItems({
    required Date endDate,
    required int count,
  });

  Future<GalleryItem> getItem({
    required Date date,
  });

  Future<List<GalleryItem>> getLatestItems({
    required int count,
  });

  Future<void> toggleFavorite({
    required GalleryItem galleryItem,
  });

  Future<List<GalleryItem>> getFavorites();
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
  }) async {
    final latestItem = await _remoteGalleryDataSource.getLatestItem(
      language: GalleryItemLanguage.english,
    );

    await _localGalleryDataSource.cacheItems(
      galleryItems: [latestItem],
    );

    return getItems(endDate: latestItem.date, count: count);
  }

  @override
  Future<List<GalleryItem>> getItems({
    required Date endDate,
    required int count,
  }) async {
    final startDate = endDate.subtract(Duration(days: count - 1));

    final cachedItems = await _localGalleryDataSource.getItems(
      startDate: startDate,
      endDate: endDate,
    );

    final uncachedItems = await _getUncachedItems(
      startDate: startDate,
      count: count,
      cached: cachedItems,
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

  @override
  Future<GalleryItem> getItem({required Date date}) async {
    final item = await getItems(endDate: date, count: 1);

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
  Future<List<GalleryItem>> getFavorites() {
    return _localGalleryDataSource.getFavorites();
  }

  Future<List<GalleryItem>> _getUncachedItems({
    required Date startDate,
    required int count,
    required List<GalleryItem> cached,
  }) async {
    final results = <List<GalleryItem>>[];

    final days = List<Date>.generate(
      count,
      (index) => startDate.add(Duration(days: index)),
      growable: false,
    );

    bool hasDate(Date date) {
      return cached.any((e) => e.date == date);
    }

    var start = startDate;

    for (var i = 0; i < days.length; ++i) {
      final hasCurrentDate = hasDate(days[i]);

      if (hasCurrentDate) {
        continue;
      }

      if (i - 1 < 0 || hasDate(days[i - 1])) {
        start = days[i];
      }

      if (i + 1 >= days.length || hasDate(days[i + 1])) {
        final end = days[i];

        final result = await _remoteGalleryDataSource.getGalleryItems(
          startDate: start,
          endDate: end,
          language: GalleryItemLanguage.english,
        );

        results.add(result);
      }
    }

    final result = results.expand((m) => m).toList();

    return result;
  }
}
