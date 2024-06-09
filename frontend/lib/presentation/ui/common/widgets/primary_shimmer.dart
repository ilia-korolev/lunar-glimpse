import 'package:flutter/material.dart';
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
        baseColor: theme.colorScheme.surfaceContainer,
        highlightColor: theme.brightness == Brightness.light
            ? theme.colorScheme.surfaceContainerLow
            : theme.colorScheme.surfaceContainerHigh,
      ),
      child: child,
    );
  }
}
