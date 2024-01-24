import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:lottie/lottie.dart';

class ImageView extends StatelessWidget {
  const ImageView({
    required this.assetName,
    required this.child,
    super.key,
  });

  final String assetName;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.all(theme.spacing.large),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Flexible(
              flex: 4,
              child: Lottie.asset(assetName),
            ),
            child,
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
