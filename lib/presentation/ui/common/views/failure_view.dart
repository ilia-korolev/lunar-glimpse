import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:lottie/lottie.dart';

class FailureView extends StatelessWidget {
  const FailureView({
    required this.onPressed,
    super.key,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final backgroundColor = ElevationOverlay.applySurfaceTint(
      theme.colorScheme.surface,
      theme.colorScheme.surfaceTint,
      3,
    );

    return Center(
      child: Container(
        margin: EdgeInsets.all(theme.spacing.medium),
        padding: EdgeInsets.all(theme.spacing.medium),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(theme.radiuses.medium),
          color: backgroundColor,
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Lottie.asset(AssetNames.animations.astronautAndRocket),
            Text(
              l10n.responseErrorTitle,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: theme.spacing.small),
            Text(
              l10n.responseErrorText,
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: theme.spacing.small),
            ElevatedButton(
              onPressed: onPressed,
              child: Text(l10n.tryAgainButton),
            ),
          ],
        ),
      ),
    );
  }
}
