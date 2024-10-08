import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/app/_export.dart';

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
      height: theme.sizes.mediumIconSize + theme.spacing.semiLarge,
      width: theme.sizes.mediumIconSize + theme.spacing.semiLarge,
      padding: EdgeInsets.all(theme.spacing.small),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      alignment: Alignment.center,
      child: Container(
        height: theme.sizes.mediumIconSize,
        width: theme.sizes.mediumIconSize,
        alignment: Alignment.center,
        child: FaIcon(
          icon,
          color: color,
          size: theme.sizes.mediumIconSize,
          shadows: [
            Shadow(
              color: color.withOpacity(.35),
              blurRadius: theme.sizes.largeIconSize,
            ),
          ],
        ),
      ),
    );
  }
}
