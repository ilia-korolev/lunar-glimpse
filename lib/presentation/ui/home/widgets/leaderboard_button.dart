import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';

class LeaderboardButton extends StatelessWidget {
  const LeaderboardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final borderShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(theme.radiuses.medium),
    );

    return Card(
      shape: borderShape,
      margin: EdgeInsets.symmetric(horizontal: theme.spacing.semiLarge),
      child: ListTile(
        leading: CircleIcon(
          icon: Icons.emoji_events,
          color: theme.colorScheme.primary,
          backgroundColor: theme.colorScheme.primary.withOpacity(.25),
        ),
        title: const Text('Test'),
        onTap: () {},
        shape: borderShape,
        contentPadding: EdgeInsets.symmetric(
          horizontal: theme.spacing.semiLarge,
          vertical: theme.spacing.semiSmall,
        ),
        horizontalTitleGap: theme.spacing.semiLarge,
      ),
    );
  }
}
