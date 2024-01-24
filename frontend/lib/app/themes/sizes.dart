import 'dart:ui';

import 'package:flutter/material.dart';

class Sizes extends ThemeExtension<Sizes> {
  const Sizes({
    required this.smallAppBarHeight,
    required this.mediumAppBarHeight,
    required this.navBarHeight,
    required this.buttonWidth,
    required this.galleryItemCardMinWidth,
    required this.smallIconSize,
    required this.mediumIconSize,
    required this.largeIconSize,
    required this.avatarSize,
    required this.expandedArticleCardHeight,
    required this.narrowContentWidth,
    required this.mediumContentWidth,
    required this.wideContentWidth,
  });

  const Sizes.regular()
      : this(
          smallAppBarHeight: 52,
          mediumAppBarHeight: 66,
          navBarHeight: 64,
          buttonWidth: 200,
          galleryItemCardMinWidth: 360,
          smallIconSize: 16,
          mediumIconSize: 24,
          largeIconSize: 32,
          avatarSize: 90,
          expandedArticleCardHeight: 175,
          narrowContentWidth: 600,
          mediumContentWidth: 840,
          wideContentWidth: 1024,
        );

  final double smallAppBarHeight;
  final double mediumAppBarHeight;
  final double navBarHeight;
  final double buttonWidth;
  final double galleryItemCardMinWidth;
  final double smallIconSize;
  final double mediumIconSize;
  final double largeIconSize;
  final double avatarSize;
  final double expandedArticleCardHeight;
  final double narrowContentWidth;
  final double mediumContentWidth;
  final double wideContentWidth;

  @override
  Sizes copyWith({
    double? smallAppBarHeight,
    double? mediumAppBarHeight,
    double? navBarHeight,
    double? buttonWidth,
    double? galleryItemCardMinWidth,
    double? smallIconSize,
    double? mediumIconSize,
    double? largeIconSize,
    double? avatarSize,
    double? expandedArticleCardHeight,
    double? narrowContentWidth,
    double? mediumContentWidth,
    double? wideContentWidth,
  }) {
    return Sizes(
      smallAppBarHeight: smallAppBarHeight ?? this.smallAppBarHeight,
      mediumAppBarHeight: mediumAppBarHeight ?? this.mediumAppBarHeight,
      navBarHeight: navBarHeight ?? this.navBarHeight,
      buttonWidth: buttonWidth ?? this.buttonWidth,
      galleryItemCardMinWidth:
          galleryItemCardMinWidth ?? this.galleryItemCardMinWidth,
      smallIconSize: smallIconSize ?? this.smallIconSize,
      mediumIconSize: mediumIconSize ?? this.mediumIconSize,
      largeIconSize: largeIconSize ?? this.largeIconSize,
      avatarSize: avatarSize ?? this.avatarSize,
      expandedArticleCardHeight:
          expandedArticleCardHeight ?? this.expandedArticleCardHeight,
      narrowContentWidth: narrowContentWidth ?? this.narrowContentWidth,
      mediumContentWidth: mediumContentWidth ?? this.mediumContentWidth,
      wideContentWidth: wideContentWidth ?? this.wideContentWidth,
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
      galleryItemCardMinWidth: lerpDouble(
        galleryItemCardMinWidth,
        other.galleryItemCardMinWidth,
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
      expandedArticleCardHeight: lerpDouble(
        expandedArticleCardHeight,
        other.expandedArticleCardHeight,
        t,
      )!,
      narrowContentWidth: lerpDouble(
        narrowContentWidth,
        other.narrowContentWidth,
        t,
      )!,
      mediumContentWidth: lerpDouble(
        mediumContentWidth,
        other.mediumContentWidth,
        t,
      )!,
      wideContentWidth: lerpDouble(
        wideContentWidth,
        other.wideContentWidth,
        t,
      )!,
    );
  }
}
