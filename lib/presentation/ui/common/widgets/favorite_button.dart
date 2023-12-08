import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

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

    final iconColor =
        GetIt.instance<Theming>().dark.colorScheme.onSecondaryContainer;

    return Material(
      type: MaterialType.circle,
      color: theme.customColors.tomato,
      shadowColor: theme.customColors.tomato,
      elevation: 7,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: Container(
          height: theme.sizes.largeIconSize + 2 * theme.spacing.medium,
          width: theme.sizes.largeIconSize + 2 * theme.spacing.medium,
          alignment: const Alignment(0, -0.1),
          child: FaIcon(
            isFavorite ? FontAwesomeIcons.solidStar : FontAwesomeIcons.star,
            color: iconColor,
            size: theme.sizes.largeIconSize,
            shadows: [
              Shadow(
                color: iconColor.withOpacity(.5),
                blurRadius: theme.sizes.largeIconSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
