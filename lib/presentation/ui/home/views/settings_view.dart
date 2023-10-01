import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/models/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                icon: Icons.dark_mode,
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
            icon: Icons.info,
            title: l10n.aboutSettingsTitle,
            subtitle: l10n.aboutSettingsDescription,
            onPressed: () async {
              final packageInfo = await PackageInfo.fromPlatform();

              if (!context.mounted) return;

              showAboutDialog(
                applicationName: packageInfo.appName,
                applicationVersion: packageInfo.version,
                context: context,
              );
            },
          ),
          // TODO(ilia-korolev): add a git repo button
        ],
      ),
    );
  }
}
