import 'package:flutter/material.dart';
import 'package:frontend/app/_export.dart';

extension ThemeModeExtension on ThemeMode {
  String getTitle(AppLocalizations l10n) {
    switch (this) {
      case ThemeMode.system:
        return l10n.systemThemeModeTitle;
      case ThemeMode.light:
        return l10n.lightThemeModeTitle;
      case ThemeMode.dark:
        return l10n.darkThemeModeTitle;
    }
  }
}
