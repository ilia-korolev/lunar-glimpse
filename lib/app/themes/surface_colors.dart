import 'package:flutter/material.dart';
import 'package:material_color_utilities/hct/cam16.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';

// TODO(ilia-korolev): The tone-based surface colors are missed in ColorScheme
// This is a workaround
// Remove this when it is fixed
// https://github.com/flutter/flutter/issues/115912
class SurfaceColors extends ThemeExtension<SurfaceColors> {
  SurfaceColors._({
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  SurfaceColors.dark({required Color colorSeed})
      : this._(
          surfaceDim: colorSeed.withNeutralTone(6),
          surfaceBright: colorSeed.withNeutralTone(24),
          surfaceContainerLowest: colorSeed.withNeutralTone(4),
          surfaceContainerLow: colorSeed.withNeutralTone(10),
          surfaceContainer: colorSeed.withNeutralTone(12),
          surfaceContainerHigh: colorSeed.withNeutralTone(17),
          surfaceContainerHighest: colorSeed.withNeutralTone(22),
        );

  SurfaceColors.light({required Color colorSeed})
      : this._(
          surfaceDim: colorSeed.withNeutralTone(87),
          surfaceBright: colorSeed.withNeutralTone(98),
          surfaceContainerLowest: colorSeed.withNeutralTone(100),
          surfaceContainerLow: colorSeed.withNeutralTone(96),
          surfaceContainer: colorSeed.withNeutralTone(94),
          surfaceContainerHigh: colorSeed.withNeutralTone(92),
          surfaceContainerHighest: colorSeed.withNeutralTone(90),
        );

  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;

  @override
  ThemeExtension<SurfaceColors> copyWith({
    Color? dim,
    Color? bright,
    Color? containerLowest,
    Color? containerLow,
    Color? container,
    Color? containerHigh,
    Color? containerHighest,
  }) {
    return SurfaceColors._(
      surfaceDim: dim ?? this.surfaceDim,
      surfaceBright: bright ?? this.surfaceBright,
      surfaceContainerLowest: containerLowest ?? this.surfaceContainerLowest,
      surfaceContainerLow: containerLow ?? this.surfaceContainerLow,
      surfaceContainer: container ?? this.surfaceContainer,
      surfaceContainerHigh: containerHigh ?? this.surfaceContainerHigh,
      surfaceContainerHighest: containerHighest ?? this.surfaceContainerHighest,
    );
  }

  @override
  ThemeExtension<SurfaceColors> lerp(
    covariant ThemeExtension<SurfaceColors>? other,
    double t,
  ) {
    if (other is! SurfaceColors) {
      return this;
    }

    return SurfaceColors._(
      surfaceDim: Color.lerp(surfaceDim, other.surfaceDim, t)!,
      surfaceBright: Color.lerp(surfaceBright, other.surfaceBright, t)!,
      surfaceContainerLowest:
          Color.lerp(surfaceContainerLowest, other.surfaceContainerLowest, t)!,
      surfaceContainerLow:
          Color.lerp(surfaceContainerLow, other.surfaceContainerLow, t)!,
      surfaceContainer:
          Color.lerp(surfaceContainer, other.surfaceContainer, t)!,
      surfaceContainerHigh:
          Color.lerp(surfaceContainerHigh, other.surfaceContainerHigh, t)!,
      surfaceContainerHighest: Color.lerp(
          surfaceContainerHighest, other.surfaceContainerHighest, t)!,
    );
  }
}

extension _ColorX on Color {
  Color withNeutralTone(int tone) {
    final cam = Cam16.fromInt(value);
    final neutralPalette = TonalPalette.of(cam.hue, 6);

    return Color(neutralPalette.get(tone));
  }
}
