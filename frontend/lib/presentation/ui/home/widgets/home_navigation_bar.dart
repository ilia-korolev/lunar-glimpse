import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '_export.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({
    required this.activeTab,
    this.onTabSelected,
    super.key,
  });

  final HomePageTab activeTab;
  final void Function(HomePageTab tab)? onTabSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return NavigationBar(
      height: theme.sizes.navBarHeight,
      selectedIndex: activeTab.index,
      onDestinationSelected: (index) {
        final selectedTab = HomePageTab.values[index];

        onTabSelected?.call(selectedTab);
      },
      destinations: [
        NavigationDestination(
          icon: const FaIcon(FontAwesomeIcons.rocket),
          label: HomePageTab.gallery.title(l10n),
        ),
        NavigationDestination(
          icon: const FaIcon(FontAwesomeIcons.newspaper),
          label: HomePageTab.news.title(l10n),
        ),
        NavigationDestination(
          icon: AnimatedSettingsIcon(
            isSelected: activeTab == HomePageTab.settings,
            duration: theme.durations.medium,
          ),
          label: HomePageTab.settings.title(l10n),
        ),
      ],
    );
  }
}
