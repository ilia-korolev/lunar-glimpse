import 'dart:ui';

import 'package:flutter/material.dart';

class Sizes extends ThemeExtension<Sizes> {
  const Sizes({
    required this.smallAppBarHeight,
    required this.mediumAppBarHeight,
    required this.navBarHeight,
    required this.buttonWidth,
    required this.mediaCardMinWidth,
    required this.smallIconSize,
    required this.mediumIconSize,
    required this.largeIconSize,
    required this.avatarSize,
    required this.expandedArticleCardSize,
  });

  const Sizes.regular()
      : this(
          smallAppBarHeight: 52,
          mediumAppBarHeight: 66,
          navBarHeight: 64,
          buttonWidth: 200,
          mediaCardMinWidth: 350,
          smallIconSize: 16,
          mediumIconSize: 24,
          largeIconSize: 32,
          avatarSize: 90,
          expandedArticleCardSize: const Size(900, 175),
        );

  final double smallAppBarHeight;
  final double mediumAppBarHeight;
  final double navBarHeight;
  final double buttonWidth;
  final double mediaCardMinWidth;
  final double smallIconSize;
  final double mediumIconSize;
  final double largeIconSize;
  final double avatarSize;
  final Size expandedArticleCardSize;

  @override
  Sizes copyWith({
    double? smallAppBarHeight,
    double? mediumAppBarHeight,
    double? navBarHeight,
    double? buttonWidth,
    double? mediaCardMinWidth,
    double? smallIconSize,
    double? mediumIconSize,
    double? largeIconSize,
    double? avatarSize,
    Size? expandedArticleCardSize,
  }) {
    return Sizes(
      smallAppBarHeight: smallAppBarHeight ?? this.smallAppBarHeight,
      mediumAppBarHeight: mediumAppBarHeight ?? this.mediumAppBarHeight,
      navBarHeight: navBarHeight ?? this.navBarHeight,
      buttonWidth: buttonWidth ?? this.buttonWidth,
      mediaCardMinWidth: mediaCardMinWidth ?? this.mediaCardMinWidth,
      smallIconSize: smallIconSize ?? this.smallIconSize,
      mediumIconSize: mediumIconSize ?? this.mediumIconSize,
      largeIconSize: largeIconSize ?? this.largeIconSize,
      avatarSize: avatarSize ?? this.avatarSize,
      expandedArticleCardSize:
          expandedArticleCardSize ?? this.expandedArticleCardSize,
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
      buttonWidth: lerpDouble(
        buttonWidth,
        other.buttonWidth,
        t,
      )!,
      mediaCardMinWidth: lerpDouble(
        mediaCardMinWidth,
        other.mediaCardMinWidth,
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
      expandedArticleCardSize: Size.lerp(
        expandedArticleCardSize,
        other.expandedArticleCardSize,
        t,
      )!,
    );
  }
}
