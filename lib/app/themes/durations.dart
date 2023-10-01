import 'package:flutter/material.dart';

class Durations extends ThemeExtension<Durations> {
  const Durations({
    required this.short,
    required this.medium,
    required this.long,
  });

  const Durations.regular()
      : this(
          short: const Duration(milliseconds: 100),
          medium: const Duration(milliseconds: 250),
          long: const Duration(milliseconds: 500),
        );

  final Duration short;
  final Duration medium;
  final Duration long;

  @override
  Durations copyWith({
    Duration? short,
    Duration? medium,
    Duration? long,
  }) {
    return Durations(
      short: short ?? this.short,
      medium: medium ?? this.medium,
      long: long ?? this.long,
    );
  }

  @override
  ThemeExtension<Durations> lerp(
    ThemeExtension<Durations>? other,
    double t,
  ) {
    // We don't need a lerp here
    // because durations are usually used for animations
    return this;
  }
}
