import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';

abstract interface class GalleryRepository {
  const GalleryRepository();

  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
  });

  Future<GalleryItem> getLatestItem();
}

class GalleryRepositoryImpl implements GalleryRepository {
  GalleryRepositoryImpl({
    required LocalGalleryDataSource localGalleryDataSource,
    required RemoteGalleryDataSource remoteGalleryDataSource,
  })  : _localGalleryDataSource = localGalleryDataSource,
        _remoteGalleryDataSource = remoteGalleryDataSource;

  final LocalGalleryDataSource _localGalleryDataSource;
  final RemoteGalleryDataSource _remoteGalleryDataSource;

  @override
  Future<List<GalleryItem>> getItems({
    required Date startDate,
    required Date endDate,
  }) async {
    final count = endDate.difference(startDate).inDays + 1;

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
    ]..sort((a, b) => a.date.compareTo(b.date));

    return items;
  }

  @override
  Future<GalleryItem> getLatestItem() async {
    final response = await _remoteGalleryDataSource.getLatestItem();
    await _localGalleryDataSource.cacheItems(
      galleryItems: [response],
    );

    return response;
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
        );

        results.add(result);
      }
    }

    final result = results.expand((m) => m).toList();

    return result;
  }
}
