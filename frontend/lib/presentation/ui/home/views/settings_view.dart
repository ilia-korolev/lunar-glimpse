import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/domain/models/_export.dart';
import 'package:frontend/presentation/_export.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../widgets/_export.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HomeAppBar(title: context.l10n.settingsTitle),
        const _Body(),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          BlocBuilder<AppSettingsCubit, AppSettings>(
            buildWhen: (previous, current) {
              return previous.themeMode != current.themeMode;
            },
            builder: (context, settings) {
              return SettingButton(
                icon: FontAwesomeIcons.solidMoon,
                title: l10n.themeSettingsTitle,
                subtitle: settings.themeMode.getTitle(l10n),
                onPressed: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (_) => const ThemeModePicker(),
                  );
                },
              );
            },
          ),
          SettingButton(
            icon: FontAwesomeIcons.globe,
            title: l10n.languageSettingsTitle,
            subtitle: l10n.languageSettingsDescription,
            onPressed: () async {
              context.go('/settings/language');
            },
          ),
          SettingButton(
            icon: FontAwesomeIcons.circleInfo,
            title: l10n.aboutSettingsTitle,
            subtitle: l10n.aboutSettingsDescription,
            onPressed: () async {
              final packageInfo = await PackageInfo.fromPlatform();
              final iconSize =
                  theme.iconTheme.size ?? const IconThemeData.fallback().size;

              if (!context.mounted) return;

              showAboutDialog(
                applicationName: l10n.appName,
                applicationVersion: packageInfo.version,
                applicationIcon: Image.asset(
                  AssetNames.appLogos.small,
                  height: iconSize,
                  width: iconSize,
                ),
                context: context,
              );
            },
          ),
          SettingButton(
            icon: FontAwesomeIcons.github,
            title: l10n.gitHubSettingsTitle,
            subtitle: l10n.gitHubSettingsDescription,
            onPressed: () async {
              context.go('/settings/github-info');
            },
          ),
        ],
      ),
    );
  }
}
