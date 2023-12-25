import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageError extends StatelessWidget {
  const ImageError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.meteor,
          size: theme.sizes.largeIconSize,
        ),
        SizedBox(height: theme.spacing.medium),
        Text(l10n.mediaLoadError),
      ],
    );
  }
}
