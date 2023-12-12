import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageContent extends StatelessWidget {
  const ImageContent({
    required this.uri,
    super.key,
  });

  final String uri;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return CachedNetworkImage(
      imageUrl: uri,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return Center(
          child: CircularProgressIndicator.adaptive(
            value: downloadProgress.progress,
          ),
        );
      },
      fadeInDuration: theme.durations.medium,
      fadeOutDuration: theme.durations.medium,
      errorWidget: (context, url, error) {
        return ColoredBox(
          color: theme.colorScheme.secondaryContainer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.meteor,
                size: theme.sizes.largeIconSize,
              ),
              SizedBox(height: theme.spacing.medium),
              Text(l10n.mediaLoadError),
            ],
          ),
        );
      },
    );
  }
}
