import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PrimaryShimmer extends StatelessWidget {
  const PrimaryShimmer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final backgroundColor = ElevationOverlay.applySurfaceTint(
      theme.colorScheme.surface,
      theme.colorScheme.surfaceTint,
      3,
    );

    return Shimmer.fromColors(
      baseColor: backgroundColor,
      highlightColor: theme.colorScheme.secondaryContainer,
      child: child,
    );
  }
}
