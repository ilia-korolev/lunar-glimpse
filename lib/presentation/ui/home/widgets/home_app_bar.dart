import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverAppBar(
      toolbarHeight: theme.sizes.smallAppBarHeight,
      expandedHeight: theme.sizes.mediumAppBarHeight,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: EdgeInsets.only(
          left: theme.spacing.semiLarge,
          bottom: theme.spacing.medium,
        ),
        title: Text(
          title,
          style: theme.textTheme.titleLarge,
        ),
      ),
    );
  }
}
