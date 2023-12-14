import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrimaryIconButton extends StatelessWidget {
  const PrimaryIconButton({
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

    return Material(
      color: Colors.transparent,
      type: MaterialType.circle,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: Container(
          width: theme.sizes.mediumIconSize + 2 * theme.spacing.medium,
          height: theme.sizes.mediumIconSize + 2 * theme.spacing.medium,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
          ),
          alignment: Alignment.center,
          child: FaIcon(
            icon,
            size: theme.sizes.mediumIconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
