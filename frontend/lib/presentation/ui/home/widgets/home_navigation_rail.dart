import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/presentation/_export.dart';

import '_export.dart';

class HomeNavigationRail extends StatelessWidget {
  const HomeNavigationRail({
    required this.activeTab,
    required this.body,
    required this.isExtended,
    this.onTabSelected,
    super.key,
  });

  final HomePageTab activeTab;
  final Widget body;
  final bool isExtended;
  final void Function(HomePageTab tab)? onTabSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Row(
      children: [
        NavigationRail(
          extended: isExtended,
          labelType: isExtended ? null : NavigationRailLabelType.all,
          backgroundColor: theme.colorScheme.surfaceContainer,
          selectedIndex: activeTab.index,
          onDestinationSelected: (index) {
            final selectedTab = HomePageTab.values[index];

            onTabSelected?.call(selectedTab);
          },
          destinations: [
            NavigationRailDestination(
              icon: const FaIcon(FontAwesomeIcons.rocket),
              label: Text(HomePageTab.gallery.title(l10n)),
            ),
            NavigationRailDestination(
              icon: const FaIcon(FontAwesomeIcons.newspaper),
              label: Text(HomePageTab.news.title(l10n)),
            ),
            NavigationRailDestination(
              icon: AnimatedSettingsIcon(
                isSelected: activeTab == HomePageTab.settings,
                duration: theme.durations.medium,
              ),
              label: Text(HomePageTab.settings.title(l10n)),
            ),
          ],
        ),
        Expanded(child: SafeArea(left: false, child: body)),
      ],
    );
  }
}
