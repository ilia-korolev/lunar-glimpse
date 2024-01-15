import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    required this.title,
    super.key,
    this.trailing,
  });

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverAppBar(
      toolbarHeight: theme.sizes.smallAppBarHeight,
      expandedHeight: theme.sizes.mediumAppBarHeight,
      pinned: true,
      flexibleSpace: SelectionContainer.disabled(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: FlexibleSpaceBar(
                centerTitle: false,
                titlePadding: EdgeInsets.only(
                  left: theme.spacing.semiLarge,
                  bottom: theme.spacing.semiSmall,
                ),
                title: Text(
                  title,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
            if (trailing != null)
              SafeArea(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: theme.spacing.semiSmall,
                    ),
                    child: trailing,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
