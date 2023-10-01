import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';

abstract class ThemeBuilder {
  const ThemeBuilder();

  ThemeData build({required Brightness brightness});
}

class RegularThemeBuilder implements ThemeBuilder {
  const RegularThemeBuilder();

  @override
  ThemeData build({required Brightness brightness}) {
    const mainColor = Color(0XFF009DFF);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorSchemeSeed: mainColor,
      extensions: [
        CustomColors.harmonized(mainColor),
        const Durations.regular(),
        const Radiuses.regular(),
        const Sizes.regular(),
        const Spacing.regular(),
      ],
    );
  }
}
