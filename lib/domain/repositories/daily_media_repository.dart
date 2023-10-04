import 'package:flutter_astronomy/data/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';

abstract interface class DailyMediaRepository {
  const DailyMediaRepository();

  Future<List<Media>> getDailyMedia({
    required Date endDate,
    required int count,
  });

  Future<List<Media>> getLatestMedia({
    required int count,
  });

  Future<Media> toggleFavorite({
    required Media media,
  });
}

class DailyMediaRepositoryImpl implements DailyMediaRepository {
  const DailyMediaRepositoryImpl({
    required LocalDailyMediaDataSource localDailyMediaDataSource,
    required RemoteDailyMediaDataSource remoteDailyMediaDataSource,
  })  : _localDailyMediaDataSource = localDailyMediaDataSource,
        _remoteDailyMediaDataSource = remoteDailyMediaDataSource;

  final LocalDailyMediaDataSource _localDailyMediaDataSource;
  final RemoteDailyMediaDataSource _remoteDailyMediaDataSource;

  @override
  Future<List<Media>> getLatestMedia({
    required int count,
  }) async {
    final todayMedia = await _remoteDailyMediaDataSource.getTodayMedia();

    await _localDailyMediaDataSource.cacheDailyMedia(
      dailyMedia: [todayMedia],
    );

    return getDailyMedia(endDate: todayMedia.date, count: count);
  }

  @override
  Future<List<Media>> getDailyMedia({
    required Date endDate,
    required int count,
  }) async {
    final startDate = endDate.subtract(Duration(days: count - 1));

    final cachedMedia = await _localDailyMediaDataSource.getDailyMedia(
      startDate: startDate,
      endDate: endDate,
    );

    final uncachedMedia = await _getUncachedMedia(
      startDate: startDate,
      count: count,
      cached: cachedMedia,
    );

    await _localDailyMediaDataSource.cacheDailyMedia(
      dailyMedia: uncachedMedia,
    );

    final media = [
      ...cachedMedia,
      ...uncachedMedia,
    ]..sort((a, b) => b.date.compareTo(a.date));

    return media;
  }

  @override
  Future<Media> toggleFavorite({
    required Media media,
  }) async {
    final updatedMedia = media.copyWith(isFavorite: !media.isFavorite);

    await _localDailyMediaDataSource.cacheDailyMedia(
      dailyMedia: [updatedMedia],
      onConflictUpdate: true,
    );

    return updatedMedia;
  }

  Future<List<Media>> _getUncachedMedia({
    required Date startDate,
    required int count,
    required List<Media> cached,
  }) async {
    final results = <List<Media>>[];

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

        final result = await _remoteDailyMediaDataSource.getDailyMedia(
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
