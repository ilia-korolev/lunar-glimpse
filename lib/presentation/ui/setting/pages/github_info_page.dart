import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:lottie/lottie.dart';
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
      body: Center(
        child: Container(
          margin: EdgeInsets.all(theme.spacing.medium),
          padding: EdgeInsets.all(theme.spacing.medium),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(theme.radiuses.medium),
            color: theme.surfaceColors.surfaceContainer,
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Lottie.asset(
                AssetNames.animations.astronautDeveloper,
              ),
              Text(
                l10n.gitHubInfoPageTitle,
                style: theme.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: theme.spacing.medium),
              Text(
                l10n.gitHubInfoPageText,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: theme.spacing.medium),
              FilledButton(
                onPressed: () {
                  url_launcher.launchUrl(
                    Uri.parse(
                      'https://github.com/ilia-korolev/flutter_astronomy',
                    ),
                  );
                },
                child: Text(l10n.gitHubInfoPageButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
