import 'package:flutter/material.dart';
import 'package:frontend/app/_export.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    required this.isFirst,
    required this.isLast,
    required this.title,
    this.leading,
    this.trailing,
    this.onTap,
    super.key,
  });

  final bool isFirst;
  final bool isLast;
  final Widget title;
  final Widget? leading;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: isFirst ? theme.radiuses.medium : Radius.zero,
          bottom: isLast ? theme.radiuses.medium : Radius.zero,
        ),
      ),
      tileColor: theme.colorScheme.surfaceContainer,
      contentPadding: EdgeInsets.symmetric(
        horizontal: theme.spacing.semiLarge,
        vertical: theme.spacing.extraSmall,
      ),
      horizontalTitleGap: theme.spacing.semiLarge,
      title: title,
      leading: leading,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
