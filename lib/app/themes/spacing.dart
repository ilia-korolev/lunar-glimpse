import 'dart:ui';

import 'package:flutter/material.dart';

class Spacing extends ThemeExtension<Spacing> {
  const Spacing({
    required this.small,
    required this.semiSmall,
    required this.medium,
    required this.semiLarge,
    required this.large,
  });

  const Spacing.regular()
      : this(
          small: 4,
          semiSmall: 8,
          medium: 12,
          semiLarge: 20,
          large: 32,
        );

  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;

  @override
  Spacing copyWith({
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
  }) {
    return Spacing(
      small: small ?? this.small,
      semiSmall: semiSmall ?? this.semiSmall,
      medium: medium ?? this.medium,
      semiLarge: semiLarge ?? this.semiLarge,
      large: large ?? this.large,
    );
  }

  @override
  ThemeExtension<Spacing> lerp(ThemeExtension<Spacing>? other, double t) {
    if (other is! Spacing) {
      return this;
    }

    return Spacing(
      small: lerpDouble(small, other.small, t)!,
      semiSmall: lerpDouble(semiSmall, other.semiSmall, t)!,
      medium: lerpDouble(medium, other.medium, t)!,
      semiLarge: lerpDouble(semiLarge, other.semiLarge, t)!,
      large: lerpDouble(large, other.large, t)!,
    );
  }
}
