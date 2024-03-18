import 'package:astro_common/src/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_source.freezed.dart';
part 'news_source.g.dart';

@freezed
class NewsSource with _$NewsSource {
  const factory NewsSource({
    required Uri uri,
    required Uri iconUri,
    required ContentLanguage language,
    required bool isShown,
  }) = _NewsSource;

  const NewsSource._();

  factory NewsSource.fromJson(Map<String, dynamic> json) =>
      _$NewsSourceFromJson(json);

  String get name => uri.host.replaceFirst('www.', '');
}
