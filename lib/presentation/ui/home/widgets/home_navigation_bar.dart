import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';

import '_export.dart';

class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({
    required this.activeTab,
    required this.animationDuration,
    this.onTabSelected,
    super.key,
  });

  final HomePageTab activeTab;
  final Duration animationDuration;
  final void Function(HomePageTab tab)? onTabSelected;

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _settingsController;

  @override
  void initState() {
    _settingsController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    _settingsController.addStatusListener(_resetSettingsAnimation);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant HomeNavigationBar oldWidget) {
    if (oldWidget.animationDuration != widget.animationDuration) {
      _settingsController.duration = widget.animationDuration;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _settingsController
      ..removeStatusListener(_resetSettingsAnimation)
      ..dispose();

    super.dispose();
  }

  void _resetSettingsAnimation(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _settingsController.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    final activeTab = widget.activeTab;

    return NavigationBar(
      height: theme.sizes.navBarHeight,
      selectedIndex: activeTab.index,
      onDestinationSelected: (index) {
        final selectedTab = HomePageTab.values[index];

        if (selectedTab == HomePageTab.settings &&
            activeTab != HomePageTab.settings) {
          _settingsController.forward();
        }

        widget.onTabSelected?.call(selectedTab);
      },
      destinations: [
        NavigationDestination(
          icon: const Icon(Icons.rocket_launch_sharp),
          label: HomePageTab.dailyMedia.title(l10n),
        ),
        NavigationDestination(
          icon: const Icon(Icons.newspaper),
          label: HomePageTab.news.title(l10n),
        ),
        NavigationDestination(
          icon: AnimatedSettingsIcon(controller: _settingsController),
          label: HomePageTab.settings.title(l10n),
        ),
      ],
    );
  }
}
