import 'dart:ui';

import 'package:frontend/app/_export.dart';

extension LocaleX on Locale {
  String get flagAsset {
    return switch (languageCode) {
      'en' => AssetNames.flags.us,
      'ja' => AssetNames.flags.jp,
      'ru' => AssetNames.flags.ru,
      'zh' => AssetNames.flags.ch,
      _ => throw UnimplementedError('This locale is not supported: $this'),
    };
  }
}
