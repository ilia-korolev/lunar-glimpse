import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    required this.icon,
    this.color,
    this.backgroundColor,
    super.key,
  });

  final IconData icon;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final color = this.color ?? theme.colorScheme.secondary;
    final backgroundColor =
        this.backgroundColor ?? theme.colorScheme.primaryContainer;

    return Container(
      padding: EdgeInsets.all(theme.spacing.semiSmall),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: color,
        size: theme.sizes.mediumIconSize,
        shadows: [
          Shadow(
            color: color.withOpacity(.5),
            blurRadius: theme.sizes.largeIconSize,
          ),
        ],
      ),
    );
  }
}
