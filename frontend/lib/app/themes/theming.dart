import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/app/themes/theme_builder.dart';

class Theming {
  Theming({required ThemeBuilder builder})
      : light = builder.build(brightness: Brightness.light),
        dark = builder.build(brightness: Brightness.dark);

  final ThemeData light;
  final ThemeData dark;

  ThemeData resolveMode(ThemeMode mode) {
    final platformBrightness = PlatformDispatcher.instance.platformBrightness;
    final useDarkTheme = mode == ThemeMode.dark ||
        (mode == ThemeMode.system && platformBrightness == Brightness.dark);

    return useDarkTheme ? dark : light;
  }

  ThemeData resolveBrightness(Brightness brightness) {
    return brightness == Brightness.light ? light : dark;
  }
}
