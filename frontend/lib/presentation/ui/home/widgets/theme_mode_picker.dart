import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';

import '_export.dart';

class ThemeModePicker extends StatelessWidget {
  const ThemeModePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: theme.spacing.semiLarge,
        horizontal: theme.spacing.small,
      ),
      child: Row(
        children: ThemeMode.values
            .map(
              (themeMode) => Expanded(
                child: ThemeModeButton(themeMode: themeMode),
              ),
            )
            .toList(),
      ),
    );
  }
}
