import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
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

    return Shimmer.fromColors(
      baseColor: theme.surfaceColors.surfaceContainer,
      highlightColor: theme.colorScheme.secondaryContainer,
      child: child,
    );
  }
}
