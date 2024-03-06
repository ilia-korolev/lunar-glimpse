import 'package:collection/collection.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:xml/xml.dart';

abstract interface class RssParser {
  const RssParser();

  List<Article> parse({
    required XmlDocument xmlDocument,
    required NewsSource source,
  });
}

class RssParserImpl implements RssParser {
  const RssParserImpl();

  @override
  List<Article> parse({
    required XmlDocument xmlDocument,
    required NewsSource source,
  }) {
    final articles = xmlDocument.findAllElements('item').map(
      (i) {
        return Article(
          title: i.findAllElements('title').first.innerText.trim(),
          description: _parseDescription(i),
          uri: Uri.parse(i.findAllElements('link').first.innerText),
          date: _parseDate(i),
          author: _parseAuthor(i),
          thumbnail: _parseThumbnail(i),
          source: source,
        );
      },
    ).toList();

    return articles;
  }

  String _parseDescription(XmlElement i) {
    return i.findAllElements('description').firstOrNull?.innerText.trim() ??
        i.findAllElements('turbo:topic').first.innerText.trim();
  }

  DateTime _parseDate(XmlElement i) {
    final dateToParse = i.findAllElements('pubDate').firstOrNull?.innerText ??
        i.findAllElements('dc:date').first.innerText;

    final date = DateTime.tryParse(dateToParse);

    if (date != null) {
      return date;
    }

    return _parseRfc822Date(dateToParse);
  }

  // TODO(ilia-korolev): intl has no implementation for parsing time zones
  // this is a workaround for parsing RFC822 date format
  // remove it when intl get an implementation for parsing time zones
  // https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html
  DateTime _parseRfc822Date(String source) {
    const monthNames = 'Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec';
    const rfc822Pattern = '(\\d+) ($monthNames) (\\d+) (.*)';

    final match = RegExp(rfc822Pattern).firstMatch(source)!;
    final month = '${monthNames.indexOf(match[2]!) ~/ 4 + 1}'.padLeft(2, '0');
    final year = match[3];
    final day = match[1];
    final time = match[4];

    return DateTime.parse('$year-$month-${day}T$time');
  }

  String? _parseAuthor(XmlElement item) {
    return (item.findAllElements('author').firstOrNull?.innerText ??
            item.findAllElements('dc:creator').firstOrNull?.innerText)
        ?.trim();
  }

  Uri? _parseThumbnail(XmlElement item) {
    final enclosure = item
        .findAllElements('enclosure')
        .firstWhereOrNull(
          (e) => e.attributes.any(
            (a) => a.name.local == 'type' && a.value == 'image/jpeg',
          ),
        )
        ?.attributes
        .firstWhereOrNull((a) => a.name.local == 'url')
        ?.value;

    if (enclosure != null) {
      return Uri.parse(enclosure);
    }

    final mediaContent = item
        .findAllElements('media:content')
        .firstWhereOrNull(
          (e) => e.attributes.any(
            (a) => a.name.local == 'medium' && a.value == 'image',
          ),
        )
        ?.attributes
        .firstWhereOrNull((a) => a.name.local == 'url')
        ?.value;

    if (mediaContent != null) {
      return Uri.parse(mediaContent);
    }

    final mediaThumbnail = item
        .findAllElements('media:thumbnail')
        .firstOrNull
        ?.attributes
        .firstWhereOrNull((a) => a.name.local == 'url')
        ?.value;

    if (mediaThumbnail != null) {
      return Uri.parse(mediaThumbnail);
    }

    return null;
  }
}
