import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:shimmer/shimmer.dart';

class LoadingMediaCard extends StatelessWidget {
  const LoadingMediaCard({
    super.key,
  });

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
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(theme.radiuses.large),
        ),
        margin: EdgeInsets.symmetric(horizontal: theme.spacing.semiLarge),
        child: const AspectRatio(aspectRatio: 1),
      ),
    );
  }
}
