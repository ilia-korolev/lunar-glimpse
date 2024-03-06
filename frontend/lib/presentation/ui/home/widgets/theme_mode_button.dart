import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/models/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ThemeModeButton extends StatelessWidget {
  const ThemeModeButton({
    required this.themeMode,
    super.key,
  });

  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return InkWell(
      borderRadius: BorderRadius.all(theme.radiuses.medium),
      onTap: () {
        context.read<AppSettingsCubit>().changeThemeMode(themeMode);
      },
      child: Padding(
        padding: EdgeInsets.all(theme.spacing.small),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _ThemeIcon(
              size: theme.sizes.avatarSize,
              firstColor: _getFirstColor(),
              secondColor: _getSecondColor(),
              shadowColor: _getShadowColor(),
            ),
            SizedBox(height: theme.spacing.small),
            Text(
              themeMode.getTitle(l10n),
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: theme.spacing.small),
            const Spacer(),
            BlocBuilder<AppSettingsCubit, AppSettings>(
              buildWhen: (previous, current) {
                return previous.themeMode != current.themeMode;
              },
              builder: (context, settings) {
                return IgnorePointer(
                  child: Radio<ThemeMode>(
                    visualDensity: VisualDensity.compact,
                    value: themeMode,
                    groupValue: settings.themeMode,
                    // the callback of the Radio widget is ignored
                    // the callback of the InkWell widget is used instead
                    onChanged: (_) {},
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Color _getFirstColor() {
    final theming = GetIt.instance<Theming>();

    switch (themeMode) {
      case ThemeMode.system:
        return theming.dark.colorScheme.primary;
      case ThemeMode.light:
        return theming.light.colorScheme.primary;
      case ThemeMode.dark:
        return theming.dark.colorScheme.primary;
    }
  }

  Color _getSecondColor() {
    final theming = GetIt.instance<Theming>();

    switch (themeMode) {
      case ThemeMode.system:
        return theming.light.colorScheme.primary;
      case ThemeMode.light:
        return theming.light.colorScheme.background;
      case ThemeMode.dark:
        return theming.dark.colorScheme.background;
    }
  }

  Color _getShadowColor() {
    final theming = GetIt.instance<Theming>();

    switch (themeMode) {
      case ThemeMode.system:
        return theming.light.colorScheme.shadow;
      case ThemeMode.light:
        return theming.light.colorScheme.shadow;
      case ThemeMode.dark:
        return theming.dark.colorScheme.shadow;
    }
  }
}

class _ThemeIcon extends StatelessWidget {
  const _ThemeIcon({
    required this.size,
    required this.firstColor,
    required this.secondColor,
    required this.shadowColor,
  });

  final double size;
  final Color firstColor;
  final Color secondColor;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.circle,
      color: secondColor,
      surfaceTintColor: firstColor,
      shadowColor: shadowColor,
      elevation: 1,
      child: Transform.rotate(
        angle: math.pi / 4,
        child: Container(
          height: size,
          width: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              Expanded(
                child: ColoredBox(
                  color: firstColor,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.expand(),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
