import 'package:timezone/timezone.dart' as timezone show getLocation;
import 'package:timezone/timezone.dart' show TZDateTime;

abstract interface class LocalCacheExpiryDataSource {
  const LocalCacheExpiryDataSource();

  bool isLatestGalleryItemExpired();
  void updateTimeStamp();
}

class InMemoryCacheExpiryDataSource implements LocalCacheExpiryDataSource {
  const InMemoryCacheExpiryDataSource();

  static const int _cacheDurationHours = 24;

  static final _location = timezone.getLocation('America/New_York');

  static TZDateTime? _lastUpdated;

  @override
  bool isLatestGalleryItemExpired() {
    if (_lastUpdated == null) {
      return true;
    }

    final now = TZDateTime.now(_location);

    if (now.difference(_lastUpdated!).inHours > _cacheDurationHours) {
      return true;
    }

    final newImageDate = TZDateTime(_location, now.year, now.month, now.day, 1);

    if (_lastUpdated!.isBefore(newImageDate)) {
      return true;
    }

    return false;
  }

  @override
  void updateTimeStamp() {
    _lastUpdated = TZDateTime.now(_location);
  }
}
