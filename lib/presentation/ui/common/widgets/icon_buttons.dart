import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtonBase extends StatelessWidget {
  const IconButtonBase({
    required this.icon,
    required this.iconSize,
    required this.padding,
    required this.onPressed,
    this.iconColor,
    this.backgroundColor = Colors.transparent,
    this.elevation = 0,
    this.alignment = Alignment.center,
    this.iconShadows,
    super.key,
  });

  final IconData icon;
  final double iconSize;
  final double padding;
  final void Function()? onPressed;

  final Color? iconColor;
  final Color backgroundColor;
  final double elevation;
  final AlignmentGeometry alignment;
  final List<Shadow>? iconShadows;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.circle,
      color: backgroundColor,
      elevation: elevation,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: Container(
          height: iconSize + 2 * padding,
          width: iconSize + 2 * padding,
          alignment: alignment,
          child: FaIcon(
            icon,
            color: iconColor,
            size: iconSize,
            shadows: iconShadows,
          ),
        ),
      ),
    );
  }
}

class SmallIconButton extends StatelessWidget {
  const SmallIconButton({
    required this.onPressed,
    required this.icon,
    this.backgroundColor = Colors.transparent,
    this.iconColor,
    super.key,
  });

  final void Function() onPressed;
  final IconData icon;
  final Color backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButtonBase(
      icon: icon,
      onPressed: onPressed,
      iconColor: iconColor,
      backgroundColor: backgroundColor,
      iconSize: theme.sizes.smallIconSize,
      padding: theme.spacing.semiSmall,
    );
  }

  static double getSize({required BuildContext context}) {
    final theme = Theme.of(context);

    return theme.sizes.smallIconSize + 2 * theme.spacing.semiSmall;
  }
}

class MediumIconButton extends StatelessWidget {
  const MediumIconButton({
    required this.onPressed,
    required this.icon,
    this.backgroundColor = Colors.transparent,
    this.iconColor,
    super.key,
  });

  final void Function() onPressed;
  final IconData icon;
  final Color backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButtonBase(
      icon: icon,
      onPressed: onPressed,
      iconColor: iconColor,
      backgroundColor: backgroundColor,
      iconSize: theme.sizes.mediumIconSize,
      padding: theme.spacing.semiSmall,
    );
  }
}

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    required this.isFavorite,
    required this.onPressed,
    super.key,
  });

  final bool isFavorite;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final iconColor = isFavorite
        ? theme.customColors.blueberry
        : theme.colorScheme.onPrimaryContainer;

    return IconButtonBase(
      icon: isFavorite ? FontAwesomeIcons.solidStar : FontAwesomeIcons.star,
      iconSize: theme.sizes.largeIconSize,
      padding: theme.spacing.semiSmall,
      onPressed: onPressed,
      iconColor: iconColor,
      backgroundColor: theme.colorScheme.background,
      elevation: 7,
      alignment: const Alignment(0, -0.1),
      iconShadows: [
        if (isFavorite)
          Shadow(
            color: iconColor.withOpacity(.5),
            blurRadius: theme.sizes.largeIconSize,
          ),
      ],
    );
  }
}
