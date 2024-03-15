import 'package:flutter/material.dart';
import 'package:frontend/app/_export.dart';
import 'package:material_color_utilities/hct/cam16.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';

abstract class ThemeBuilder {
  const ThemeBuilder();

  ThemeData build({required Brightness brightness});
}

class RegularThemeBuilder implements ThemeBuilder {
  const RegularThemeBuilder();

  @override
  ThemeData build({required Brightness brightness}) {
    const mainColor = Color(0XFF009DFF);

    final colorScheme = _createScheme(
      colorSeed: mainColor,
      brightness: brightness,
    );

    final surfaceColors = brightness == Brightness.light
        ? SurfaceColors.light(colorSeed: mainColor)
        : SurfaceColors.dark(colorSeed: mainColor);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      extensions: [
        CustomColors.harmonized(mainColor),
        const AppDurations.regular(),
        const Radiuses.regular(),
        const Sizes.regular(),
        const Spacing.regular(),
        surfaceColors,
      ],
    );
  }

  // TODO(ilia-korolev): a workaround for ColorScheme
  // remove it when it's fixed
  // https://github.com/flutter/flutter/issues/115912#issuecomment-1790245495
  ColorScheme _createScheme({
    required Color colorSeed,
    required Brightness brightness,
  }) {
    final cam = Cam16.fromInt(colorSeed.value);
    final neutralPalette = TonalPalette.of(cam.hue, 6);

    final surface = brightness == Brightness.light
        ? Color(neutralPalette.get(98))
        : Color(neutralPalette.get(6));

    final onSurface = brightness == Brightness.light
        ? Color(neutralPalette.get(10))
        : Color(neutralPalette.get(90));

    final inverseSurface = brightness == Brightness.light
        ? Color(neutralPalette.get(20))
        : Color(neutralPalette.get(90));

    final onInverseSurface = brightness == Brightness.light
        ? Color(neutralPalette.get(95))
        : Color(neutralPalette.get(20));

    final colorScheme = ColorScheme.fromSeed(
      seedColor: colorSeed,
      brightness: brightness,
    ).copyWith(
      surface: surface,
      onSurface: onSurface,
      background: surface,
      onBackground: onSurface,
      shadow: Color(neutralPalette.get(0)),
      scrim: Color(neutralPalette.get(0)),
      inverseSurface: inverseSurface,
      onInverseSurface: onInverseSurface,
    );

    return colorScheme;
  }
}
