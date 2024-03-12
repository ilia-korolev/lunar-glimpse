import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/core/misc/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/_export.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Scaffold(
      appBar: PrimaryAppBar(
        height: theme.sizes.smallAppBarHeight,
        title: Text(l10n.languageSettingsTitle),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double padding = math.max(
            (constraints.maxWidth - theme.sizes.narrowContentWidth) / 2,
            theme.spacing.medium,
          );

          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: theme.spacing.medium,
                  horizontal: padding,
                ),
                sliver: const _TranslationSettings(),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: theme.spacing.medium,
                  horizontal: padding,
                ),
                sliver: const _LanguageList(),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _TranslationSettings extends StatelessWidget {
  const _TranslationSettings();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return BlocBuilder<AppSettingsCubit, AppSettings>(
      buildWhen: (previous, current) =>
          previous.translateGallery != current.translateGallery,
      builder: (context, settings) {
        return SliverList.list(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: theme.spacing.semiLarge,
                bottom: theme.spacing.small,
              ),
              child: Text(
                l10n.languageSettingsTranslationTitle.toUpperCase(),
                style: theme.textTheme.titleSmall,
              ),
            ),
            SettingsTile(
              isFirst: true,
              isLast: true,
              title: Row(
                children: [
                  Flexible(child: Text(l10n.languageSettingsTranslateGallery)),
                  SizedBox(width: theme.spacing.extraSmall),
                  PrimaryIconButton(
                    icon: FontAwesomeIcons.circleExclamation,
                    size: IconButtonSize.medium,
                    onPressed: (context) {
                      showAdaptiveDialog<void>(
                        context: context,
                        builder: (context) {
                          return AlertDialog.adaptive(
                            title: Text(
                              l10n.languageSettingsTranslationNoteTitle,
                            ),
                            content: Text(
                              l10n.languageSettingsTranslationNoteText,
                            ),
                            actions: <Widget>[
                              _adaptiveAction(
                                context: context,
                                onPressed: () => Navigator.pop(context),
                                child: Text(l10n.closeButton),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              trailing: Switch.adaptive(
                value: settings.translateGallery,
                onChanged: (bool value) {
                  context.read<AppSettingsCubit>().changeTranslateGallery(
                        translateGallery: value,
                      );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _adaptiveAction({
    required BuildContext context,
    required VoidCallback onPressed,
    required Widget child,
  }) {
    final theme = Theme.of(context);

    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(onPressed: onPressed, child: child);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(onPressed: onPressed, child: child);
    }
  }
}

class _LanguageList extends StatelessWidget {
  const _LanguageList();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final locales = [
      null,
      ...AppLocalizations.supportedLocales,
    ];

    return SliverList.separated(
      itemCount: locales.length,
      itemBuilder: (context, index) {
        return _LocaleTile(
          locale: locales[index],
          isFirst: index == 0,
          isLast: index == locales.length - 1,
        );
      },
      separatorBuilder: (context, index) {
        return ColoredBox(
          color: theme.surfaceColors.surfaceContainer,
          child: Divider(
            height: 1,
            color: theme.surfaceColors.surfaceContainerHighest,
            indent: theme.spacing.semiLarge,
            endIndent: theme.spacing.semiLarge,
          ),
        );
      },
    );
  }
}

class _LocaleTile extends StatelessWidget {
  const _LocaleTile({
    required this.locale,
    required this.isFirst,
    required this.isLast,
  });

  final Locale? locale;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final tileLocale = locale ??
        basicLocaleListResolution(
          WidgetsBinding.instance.platformDispatcher.locales,
          AppLocalizations.supportedLocales,
        );

    final l10n = lookupAppLocalizations(tileLocale);

    return BlocBuilder<AppSettingsCubit, AppSettings>(
      buildWhen: (previous, current) => previous.locale != current.locale,
      builder: (context, settings) {
        final title =
            locale == null ? l10n.systemLanguageName : l10n.languageName;

        return SettingsTile(
          isFirst: isFirst,
          isLast: isLast,
          title: Text(title),
          leading: _FlagIcon(locale: locale),
          trailing: settings.locale != locale ? null : const _CheckIcon(),
          onTap: () {
            context.read<AppSettingsCubit>().changeLocale(locale);
          },
        );
      },
    );
  }
}

class _FlagIcon extends StatelessWidget {
  const _FlagIcon({
    required this.locale,
  });

  final Locale? locale;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surface,
      type: MaterialType.circle,
      clipBehavior: Clip.antiAlias,
      elevation: 1,
      child: Builder(
        builder: (context) {
          if (locale == null) {
            return FaIcon(
              FontAwesomeIcons.globe,
              size: theme.sizes.largeIconSize,
            );
          }

          return SizedBox(
            width: theme.sizes.largeIconSize,
            height: theme.sizes.largeIconSize,
            child: Image.asset(locale!.flagAsset),
          );
        },
      ),
    );
  }
}

class _CheckIcon extends StatelessWidget {
  const _CheckIcon();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.colorScheme.primary,
      ),
      height: theme.sizes.smallIconSize + 2 * theme.spacing.small,
      width: theme.sizes.smallIconSize + 2 * theme.spacing.small,
      alignment: Alignment.center,
      child: FaIcon(
        FontAwesomeIcons.check,
        size: theme.sizes.smallIconSize,
        color: theme.colorScheme.onPrimary,
      ),
    );
  }
}
