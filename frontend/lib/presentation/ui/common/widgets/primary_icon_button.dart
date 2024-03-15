import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/app/_export.dart';

enum IconButtonSize {
  small,
  medium,
  large;

  double getIconSize(BuildContext context) {
    final theme = Theme.of(context);

    switch (this) {
      case IconButtonSize.small:
        return theme.sizes.smallIconSize;
      case IconButtonSize.medium:
        return theme.sizes.mediumIconSize;

      case IconButtonSize.large:
        return theme.sizes.largeIconSize;
    }
  }

  double getButtonSize(BuildContext context) {
    final theme = Theme.of(context);

    return getIconSize(context) + 2 * theme.spacing.semiSmall;
  }
}

class PrimaryIconButton extends StatelessWidget {
  const PrimaryIconButton({
    required this.icon,
    required this.size,
    required this.onPressed,
    this.iconColor,
    this.backgroundColor = Colors.transparent,
    this.elevation = 0,
    this.alignment = Alignment.center,
    this.iconShadows,
    super.key,
  });

  final IconData icon;
  final IconButtonSize size;
  final void Function(BuildContext context) onPressed;
  final Color backgroundColor;
  final Color? iconColor;
  final double elevation;
  final AlignmentGeometry alignment;
  final List<Shadow>? iconShadows;

  @override
  Widget build(BuildContext context) {
    final iconSize = size.getIconSize(context);
    final buttonSize = size.getButtonSize(context);

    return Material(
      type: MaterialType.circle,
      color: backgroundColor,
      elevation: elevation,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () => onPressed(context),
        child: Container(
          height: buttonSize,
          width: buttonSize,
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
