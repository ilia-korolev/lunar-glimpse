part of 'app_database.dart';

final _initialNewsSources = {
  NewsSourceEntity(
    uri: Uri.parse('https://www.space.com/feeds/all'),
    favicon: Uri.parse('https://www.space.com/favicon.ico'),
    language: ContentLanguage.english,
    isShown: false,
  ),
  NewsSourceEntity(
    uri: Uri.parse('https://www.nasa.gov/news-release/feed/'),
    favicon: Uri.parse(
      'https://www.nasa.gov/wp-content/plugins/nasa-hds-core-setup/assets/favicons/favicon-32x32.png',
    ),
    language: ContentLanguage.english,
    isShown: false,
  ),
  NewsSourceEntity(
    uri: Uri.parse('http://skyandtelescope.com/feed'),
    favicon: Uri.parse('https://skyandtelescope.org/favicon.ico'),
    language: ContentLanguage.english,
    isShown: false,
  ),
  NewsSourceEntity(
    uri: Uri.parse('https://www.universetoday.com/feed/'),
    favicon: Uri.parse('https://www.universetoday.com/favicon.ico'),
    language: ContentLanguage.english,
    isShown: false,
  ),
  NewsSourceEntity(
    uri: Uri.parse('https://www.newscientist.com/subject/space/feed/'),
    favicon: Uri.parse('https://www.newscientist.com/favicon.ico'),
    language: ContentLanguage.english,
    isShown: false,
  ),
  NewsSourceEntity(
    uri: Uri.parse('https://www.jaxa.jp/rss/press_j.rdf'),
    favicon: Uri.parse('https://www.jaxa.jp/favicon.ico'),
    language: ContentLanguage.japanese,
    isShown: false,
  ),
  NewsSourceEntity(
    uri: Uri.parse('http://news.local-group.jp/rss.rdf'),
    favicon: Uri.parse('http://news.local-group.jp/favicon.ico'),
    language: ContentLanguage.japanese,
    isShown: false,
  ),
  NewsSourceEntity(
    uri: Uri.parse('https://elementy.ru/rss/news/cosmos'),
    favicon: Uri.parse('https://elementy.ru/favicon.ico'),
    language: ContentLanguage.russian,
    isShown: false,
  ),
  NewsSourceEntity(
    uri: Uri.parse(
      'https://naked-science.ru/article/category/cosmonautics/feed',
    ),
    favicon: Uri.parse('https://naked-science.ru/favicon.ico'),
    language: ContentLanguage.russian,
    isShown: false,
  ),
  NewsSourceEntity(
    uri: Uri.parse('https://www.sciencetoday.ru/cosmos?format=feed&type=rss'),
    favicon:
        Uri.parse('https://sciencetoday.ru/templates/ja_teline_v/favicon.ico'),
    language: ContentLanguage.russian,
    isShown: false,
  ),
};
