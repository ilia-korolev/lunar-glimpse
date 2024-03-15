import 'package:flutter/material.dart';
import 'package:frontend/app/_export.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    this.onPressed,
    super.key,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: theme.sizes.buttonWidth,
      padding: EdgeInsets.only(bottom: theme.spacing.large),
      child: FilledButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(vertical: theme.spacing.medium),
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
