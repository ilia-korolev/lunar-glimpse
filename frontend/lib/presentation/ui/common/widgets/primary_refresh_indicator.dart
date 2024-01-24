import 'package:flutter/material.dart';

class PrimaryRefreshIndicator extends StatelessWidget {
  const PrimaryRefreshIndicator({
    required this.child,
    required this.onRefresh,
    super.key,
  });

  final Widget child;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return RefreshIndicator(
      edgeOffset: statusBarHeight,
      backgroundColor: theme.colorScheme.secondaryContainer,
      color: theme.colorScheme.onSecondaryContainer,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
