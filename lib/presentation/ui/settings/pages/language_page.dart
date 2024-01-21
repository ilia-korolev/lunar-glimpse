import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

          final locales = [
            null,
            ...AppLocalizations.supportedLocales,
          ];

          return ListView.separated(
            padding: EdgeInsets.symmetric(
              vertical: theme.spacing.medium,
              horizontal: padding,
            ),
            itemCount: locales.length,
            itemBuilder: (context, index) {
              return _LocaleTileExpanded(
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
        },
      ),
    );
  }
}

class _LocaleTileExpanded extends StatelessWidget {
  const _LocaleTileExpanded({
    required this.locale,
    required this.isFirst,
    required this.isLast,
  });

  final Locale? locale;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final tileLocale = locale ?? Localizations.localeOf(context);
    final l10n = lookupAppLocalizations(tileLocale);
    final theme = Theme.of(context);

    return BlocBuilder<AppSettingsCubit, AppSettings>(
      builder: (context, settings) {
        return ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: isFirst ? theme.radiuses.medium : Radius.zero,
              bottom: isLast ? theme.radiuses.medium : Radius.zero,
            ),
          ),
          tileColor: theme.surfaceColors.surfaceContainer,
          contentPadding: EdgeInsets.symmetric(
            horizontal: theme.spacing.semiLarge,
            vertical: theme.spacing.extraSmall,
          ),
          horizontalTitleGap: theme.spacing.semiLarge,
          title: Text(
            locale == null ? l10n.systemLanguageName : l10n.languageName,
          ),
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
            child: SvgPicture.asset(
              _getFlagAsset(locale!),
            ),
          );
        },
      ),
    );
  }

  String _getFlagAsset(Locale locale) {
    return switch (locale.languageCode) {
      'en' => AssetNames.flags.us,
      'ja' => AssetNames.flags.jp,
      'ru' => AssetNames.flags.ru,
      'zh' => AssetNames.flags.ch,
      _ => throw UnimplementedError('This locale is not supported: $locale'),
    };
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
