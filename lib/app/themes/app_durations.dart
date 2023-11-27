import 'package:flutter/material.dart';

class AppDurations extends ThemeExtension<AppDurations> {
  const AppDurations({
    required this.short,
    required this.medium,
    required this.long,
  });

  const AppDurations.regular()
      : this(
          short: const Duration(milliseconds: 100),
          medium: const Duration(milliseconds: 250),
          long: const Duration(milliseconds: 500),
        );

  final Duration short;
  final Duration medium;
  final Duration long;

  @override
  AppDurations copyWith({
    Duration? short,
    Duration? medium,
    Duration? long,
  }) {
    return AppDurations(
      short: short ?? this.short,
      medium: medium ?? this.medium,
      long: long ?? this.long,
    );
  }

  @override
  ThemeExtension<AppDurations> lerp(
    ThemeExtension<AppDurations>? other,
    double t,
  ) {
    // We don't need to lerp here
    // because durations are usually used for animations
    return this;
  }
}
