import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';

import '../widgets/_export.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HomeAppBar(title: context.l10n.newsTitle),
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
    const newsCount = 100;

    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: theme.spacing.medium,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index.isOdd) {
              return SizedBox(height: theme.spacing.medium);
            }

            // final itemIndex = index ~/ 2;

            return const Card(
              margin: EdgeInsets.zero,
              child: SizedBox(
                height: 100,
              ),
            );
          },
          semanticIndexCallback: (Widget widget, int localIndex) {
            if (localIndex.isEven) {
              return localIndex ~/ 2;
            }

            return null;
          },
          childCount: math.max(0, newsCount * 2 - 1),
        ),
      ),
    );
  }
}
