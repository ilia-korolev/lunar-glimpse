import 'dart:ui';

import 'package:flutter/material.dart';

class Spacing extends ThemeExtension<Spacing> {
  const Spacing({
    required this.extraSmall,
    required this.small,
    required this.semiSmall,
    required this.medium,
    required this.semiLarge,
    required this.large,
    required this.extraLarge,
  });

  const Spacing.regular()
      : this(
          extraSmall: 4,
          small: 8,
          semiSmall: 12,
          medium: 16,
          semiLarge: 20,
          large: 24,
          extraLarge: 32,
        );

  final double extraSmall;
  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;
  final double extraLarge;

  @override
  Spacing copyWith({
    double? extraSmall,
    double? semiSmall,
    double? small,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
  }) {
    return Spacing(
      extraSmall: extraSmall ?? this.extraSmall,
      small: small ?? this.small,
      semiSmall: semiSmall ?? this.semiSmall,
      medium: medium ?? this.medium,
      semiLarge: semiLarge ?? this.semiLarge,
      large: large ?? this.large,
      extraLarge: extraLarge ?? this.extraLarge,
    );
  }

  @override
  ThemeExtension<Spacing> lerp(ThemeExtension<Spacing>? other, double t) {
    if (other is! Spacing) {
      return this;
    }

    return Spacing(
      extraSmall: lerpDouble(extraSmall, other.extraSmall, t)!,
      small: lerpDouble(small, other.small, t)!,
      semiSmall: lerpDouble(semiSmall, other.semiSmall, t)!,
      medium: lerpDouble(medium, other.medium, t)!,
      semiLarge: lerpDouble(semiLarge, other.semiLarge, t)!,
      large: lerpDouble(large, other.large, t)!,
      extraLarge: lerpDouble(extraLarge, other.extraLarge, t)!,
    );
  }
}
