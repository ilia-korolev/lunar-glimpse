import 'package:flutter/material.dart';
import 'package:frontend/app/_export.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PrimaryShimmer extends StatelessWidget {
  const PrimaryShimmer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Skeletonizer(
      effect: ShimmerEffect(
        baseColor: theme.surfaceColors.surfaceContainer,
        highlightColor: theme.brightness == Brightness.light
            ? theme.surfaceColors.surfaceContainerLow
            : theme.surfaceColors.surfaceContainerHigh,
      ),
      child: child,
    );
  }
}
