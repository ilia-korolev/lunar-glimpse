import 'package:flutter/material.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/presentation/_export.dart';

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

    return ImageView(
      assetName: AssetNames.animations.astronautAndRocket,
      child: Column(
        children: [
          Text(
            l10n.responseErrorTitle,
            style: theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: theme.spacing.extraSmall),
          Text(
            l10n.responseErrorText,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: theme.spacing.medium),
          SizedBox(
            width: theme.sizes.buttonWidth,
            child: SelectionContainer.disabled(
              child: FilledButton(
                onPressed: onPressed,
                child: Text(l10n.tryAgainButton),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
