part of 'app_database.dart';

final _initialWebFeeds = {
  WebFeedEntity(
    uri: Uri.parse('https://www.space.com/feeds/all'),
    favicon: Uri.parse('https://www.space.com/favicon.ico'),
    locale: const Locale('en'),
    isHidden: false,
  ),
  WebFeedEntity(
    uri: Uri.parse('https://www.nasa.gov/news-release/feed/'),
    favicon: Uri.parse(
      'https://www.nasa.gov/wp-content/plugins/nasa-hds-core-setup/assets/favicons/favicon-32x32.png',
    ),
    locale: const Locale('en'),
    isHidden: false,
  ),
  WebFeedEntity(
    uri: Uri.parse('http://skyandtelescope.com/feed'),
    favicon: Uri.parse('https://skyandtelescope.org/favicon.ico'),
    locale: const Locale('en'),
    isHidden: false,
  ),
  WebFeedEntity(
    uri: Uri.parse('https://www.universetoday.com/feed/'),
    favicon: Uri.parse('https://www.universetoday.com/favicon.ico'),
    locale: const Locale('en'),
    isHidden: false,
  ),
  WebFeedEntity(
    uri: Uri.parse('https://www.newscientist.com/subject/space/feed/'),
    favicon: Uri.parse('https://www.newscientist.com/favicon.ico'),
    locale: const Locale('en'),
    isHidden: false,
  ),
};
