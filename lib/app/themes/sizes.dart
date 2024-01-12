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
    required this.expandedArticleCardHeight,
    required this.expandedContentWidth,
  });

  const Sizes.regular()
      : this(
          smallAppBarHeight: 52,
          mediumAppBarHeight: 66,
          navBarHeight: 64,
          buttonWidth: 200,
          mediaCardMinWidth: 360,
          smallIconSize: 16,
          mediumIconSize: 24,
          largeIconSize: 32,
          avatarSize: 90,
          expandedArticleCardHeight: 175,
          expandedContentWidth: 1024,
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
  final double expandedArticleCardHeight;
  final double expandedContentWidth;

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
    double? expandedArticleCardHeight,
    double? expandedContentWidth,
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
      expandedArticleCardHeight:
          expandedArticleCardHeight ?? this.expandedArticleCardHeight,
      expandedContentWidth: expandedContentWidth ?? this.expandedContentWidth,
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
      expandedArticleCardHeight: lerpDouble(
        expandedArticleCardHeight,
        other.expandedArticleCardHeight,
        t,
      )!,
      expandedContentWidth: lerpDouble(
        expandedContentWidth,
        other.expandedContentWidth,
        t,
      )!,
    );
  }
}
