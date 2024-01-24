import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_feed.freezed.dart';

@freezed
class WebFeed with _$WebFeed {
  const factory WebFeed({
    required Uri uri,
    required Uri favicon,
    required Locale locale,
    required bool isHidden,
  }) = _WebFeed;

  const WebFeed._();

  String get name => uri.host.replaceFirst('www.', '');
}
