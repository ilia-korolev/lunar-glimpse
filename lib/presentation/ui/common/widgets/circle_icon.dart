import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      padding: EdgeInsets.all(theme.spacing.semiSmall),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      alignment: Alignment.center,
      // TODO(ilia-korolev): fix the shadow when it's ready
      // https://github.com/fluttercommunity/font_awesome_flutter/pull/247
      child: Container(
        height: theme.sizes.mediumIconSize,
        width: theme.sizes.mediumIconSize,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(.25),
              blurRadius: theme.sizes.mediumIconSize,
            ),
          ],
        ),
        child: FaIcon(
          icon,
          color: color,
          size: theme.sizes.mediumIconSize,
          // shadows: [
          //   Shadow(
          //     color: color.withOpacity(.5),
          //     blurRadius: theme.sizes.largeIconSize,
          //   ),
          // ],
        ),
      ),
    );
  }
}
