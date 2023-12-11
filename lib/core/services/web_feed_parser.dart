import 'package:collection/collection.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:intl/intl.dart';
import 'package:xml/xml.dart';

abstract interface class WebFeedParser {
  const WebFeedParser();

  List<Article> parse({
    required XmlDocument xmlDocument,
    required WebFeed source,
  });
}

class WebFeedParserImpl implements WebFeedParser {
  const WebFeedParserImpl();

  @override
  List<Article> parse({
    required XmlDocument xmlDocument,
    required WebFeed source,
  }) {
    final channelElement = xmlDocument.findAllElements('channel').first;

    final articles = channelElement.findElements('item').map(
      (i) {
        final format = DateFormat('EEE, d MMM yyyy HH:mm:ss Z');

        return Article(
          title: i.findAllElements('title').first.innerText.trim(),
          description: i.findAllElements('description').first.innerText.trim(),
          uri: Uri.parse(i.findAllElements('link').first.innerText),
          date: format.parse(i.findAllElements('pubDate').first.innerText),
          author: _parseAuthor(i),
          thumbnail: _parseThumbnail(i),
          source: source,
        );
      },
    ).toList();

    return articles;
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
