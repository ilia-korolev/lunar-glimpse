import 'package:flutter/material.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/presentation/_export.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class GithubInfoPage extends StatelessWidget {
  const GithubInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Scaffold(
      appBar: PrimaryAppBar(
        height: theme.sizes.smallAppBarHeight,
        title: Text(l10n.gitHubSettingsTitle),
      ),
      body: ImageView(
        assetName: AssetNames.animations.astronautDeveloper,
        child: Column(
          children: [
            Text(
              l10n.gitHubInfoPageTitle,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: theme.spacing.extraSmall),
            Text(
              l10n.gitHubInfoPageText,
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: theme.spacing.medium),
            PrimaryButton(
              text: l10n.gitHubInfoPageButton,
              onPressed: () {
                url_launcher.launchUrl(
                  Uri.parse(
                    'https://github.com/ilia-korolev/frontend',
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
