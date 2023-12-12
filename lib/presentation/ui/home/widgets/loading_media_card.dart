import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';

class LoadingMediaCard extends StatelessWidget {
  const LoadingMediaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PrimaryShimmer(
      child: Container(
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.all(theme.radiuses.large),
        ),
        margin: EdgeInsets.symmetric(horizontal: theme.spacing.semiLarge),
        child: const AspectRatio(aspectRatio: 4 / 3),
      ),
    );
  }
}
