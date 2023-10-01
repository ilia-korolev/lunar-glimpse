import 'package:flutter/material.dart';

class Radiuses extends ThemeExtension<Radiuses> {
  const Radiuses({
    required this.small,
    required this.medium,
    required this.large,
  });

  const Radiuses.regular()
      : this(
          small: const Radius.circular(6),
          medium: const Radius.circular(12),
          large: const Radius.circular(18),
        );

  final Radius small;
  final Radius medium;
  final Radius large;

  @override
  Radiuses copyWith({
    Radius? small,
    Radius? medium,
    Radius? large,
  }) {
    return Radiuses(
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
    );
  }

  @override
  ThemeExtension<Radiuses> lerp(ThemeExtension<Radiuses>? other, double t) {
    if (other is! Radiuses) {
      return this;
    }

    return Radiuses(
      small: Radius.lerp(small, other.small, t)!,
      medium: Radius.lerp(medium, other.medium, t)!,
      large: Radius.lerp(large, other.large, t)!,
    );
  }
}
