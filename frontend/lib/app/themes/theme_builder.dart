import 'package:flutter/material.dart';
import 'package:frontend/app/_export.dart';

abstract class ThemeBuilder {
  const ThemeBuilder();

  ThemeData build({required Brightness brightness});
}

class RegularThemeBuilder implements ThemeBuilder {
  const RegularThemeBuilder();

  @override
  ThemeData build({required Brightness brightness}) {
    const seedColor = Color(0XFF009DFF);

    final colorScheme = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    );

    final surfaceColors = brightness == Brightness.light
        ? SurfaceColors.light(colorSeed: seedColor)
        : SurfaceColors.dark(colorSeed: seedColor);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      extensions: [
        CustomColors.harmonized(seedColor),
        const AppDurations.regular(),
        const Radiuses.regular(),
        const Sizes.regular(),
        const Spacing.regular(),
        surfaceColors,
      ],
    );
  }
}
