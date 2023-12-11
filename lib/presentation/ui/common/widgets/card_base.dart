import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';

class CardBase extends StatelessWidget {
  const CardBase({
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

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(theme.radiuses.large),
      ),
      margin: EdgeInsets.symmetric(horizontal: theme.spacing.semiLarge),
      child: child,
    );
  }
}
