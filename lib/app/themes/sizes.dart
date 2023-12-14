import 'dart:ui';

import 'package:flutter/material.dart';

class Sizes extends ThemeExtension<Sizes> {
  const Sizes({
    required this.smallAppBarHeight,
    required this.mediumAppBarHeight,
    required this.navBarHeight,
    required this.smallIconSize,
    required this.mediumIconSize,
    required this.largeIconSize,
    required this.avatarSize,
  });

  const Sizes.regular()
      : this(
          smallAppBarHeight: 52,
          mediumAppBarHeight: 66,
          navBarHeight: 64,
          smallIconSize: 16,
          mediumIconSize: 24,
          largeIconSize: 32,
          avatarSize: 90,
        );

  final double smallAppBarHeight;
  final double mediumAppBarHeight;
  final double navBarHeight;
  final double smallIconSize;
  final double mediumIconSize;
  final double largeIconSize;
  final double avatarSize;

  @override
  Sizes copyWith({
    double? smallAppBarHeight,
    double? mediumAppBarHeight,
    double? navBarHeight,
    double? smallIconSize,
    double? mediumIconSize,
    double? largeIconSize,
    double? avatarSize,
  }) {
    return Sizes(
      smallAppBarHeight: smallAppBarHeight ?? this.smallAppBarHeight,
      mediumAppBarHeight: mediumAppBarHeight ?? this.mediumAppBarHeight,
      navBarHeight: navBarHeight ?? this.navBarHeight,
      smallIconSize: smallIconSize ?? this.smallIconSize,
      mediumIconSize: mediumIconSize ?? this.mediumIconSize,
      largeIconSize: largeIconSize ?? this.largeIconSize,
      avatarSize: avatarSize ?? this.avatarSize,
    );
  }

  @override
  ThemeExtension<Sizes> lerp(
    ThemeExtension<Sizes>? other,
    double t,
  ) {
    if (other is! Sizes) {
      return this;
    }

    return Sizes(
      smallAppBarHeight: lerpDouble(
        smallAppBarHeight,
        other.smallAppBarHeight,
        t,
      )!,
      mediumAppBarHeight: lerpDouble(
        mediumAppBarHeight,
        other.mediumAppBarHeight,
        t,
      )!,
      navBarHeight: lerpDouble(
        navBarHeight,
        other.navBarHeight,
        t,
      )!,
      smallIconSize: lerpDouble(
        smallIconSize,
        other.smallIconSize,
        t,
      )!,
      mediumIconSize: lerpDouble(
        mediumIconSize,
        other.mediumIconSize,
        t,
      )!,
      largeIconSize: lerpDouble(
        largeIconSize,
        other.largeIconSize,
        t,
      )!,
      avatarSize: lerpDouble(
        avatarSize,
        other.avatarSize,
        t,
      )!,
    );
  }
}
