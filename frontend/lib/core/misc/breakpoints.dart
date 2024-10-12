import 'package:flutter/material.dart';

const _maxCompactWidth = 600;
const _maxMediumWidth = 840;
const _maxExpandedWidth = 1200;

enum Breakpoint {
  /// A window whose width is less than 600 dp.
  /// - Phone in portrait
  compact,

  /// A window whose width is between 600 dp and 840 dp.
  /// - Tablet in portrait
  /// - Foldable in portrait (unfolded)
  medium,

  /// A window whose width is greater than 840 dp.
  /// - Phone in landscape
  /// - Tablet in landscape
  /// - Foldable in landscape (unfolded)
  /// - Desktop
  expanded,

  /// A window whose width is greater than 1200 dp.
  /// - Desktop
  large;

  bool get isCompact => this == Breakpoint.compact;
  bool get isMedium => this == Breakpoint.medium;
  bool get isExpanded => this == Breakpoint.expanded;
  bool get isLarge => this == Breakpoint.large;

  static Breakpoint getActive(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    switch (width) {
      case < _maxCompactWidth:
        return Breakpoint.compact;
      case >= _maxCompactWidth && < _maxMediumWidth:
        return Breakpoint.medium;
      case >= _maxMediumWidth && < _maxExpandedWidth:
        return Breakpoint.expanded;
      case >= _maxExpandedWidth:
        return Breakpoint.large;
      default:
        throw ArgumentError('The window width is not supported: $width');
    }
  }
}
