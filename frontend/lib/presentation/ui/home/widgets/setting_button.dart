import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onPressed,
    super.key,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: CircleIcon(icon: icon),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onPressed,
      contentPadding: EdgeInsets.symmetric(
        horizontal: theme.spacing.semiLarge,
      ),
      horizontalTitleGap: theme.spacing.semiLarge,
    );
  }
}
