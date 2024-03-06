import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_source.freezed.dart';

@freezed
class NewsSource with _$NewsSource {
  const factory NewsSource({
    required Uri uri,
    required Uri favicon,
    required Locale locale,
    required bool isShown,
  }) = _NewsSource;

  const NewsSource._();

  String get name => uri.host.replaceFirst('www.', '');
}
