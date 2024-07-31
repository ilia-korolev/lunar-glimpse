import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/presentation/_export.dart';

abstract class ImageContent extends StatelessWidget {
  factory ImageContent.blurHash({
    required String uri,
    required String blurHash,
    Key? key,
  }) =>
      _ImageContentBlurHash(
        uri: uri,
        blurHash: blurHash,
        key: key,
      );

  factory ImageContent.indicator({
    required String uri,
    Key? key,
  }) =>
      _ImageContentIndicator(
        uri: uri,
        key: key,
      );
}

class _ImageContentBlurHash extends StatelessWidget implements ImageContent {
  const _ImageContentBlurHash({
    required this.uri,
    required this.blurHash,
    super.key,
  });

  final String uri;
  final String blurHash;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CachedNetworkImage(
      imageUrl: uri,
      fit: BoxFit.cover,
      placeholder: (context, url) {
        return SizedBox.expand(
          child: Image(
            image: BlurHashImage(blurHash),
            fit: BoxFit.fill,
          ),
        );
      },
      fadeInDuration: theme.durations.medium,
      fadeOutDuration: theme.durations.long,
      errorWidget: (context, url, error) {
        return ColoredBox(
          color: theme.colorScheme.secondaryContainer,
          child: const ImageError(),
        );
      },
    );
  }
}

class _ImageContentIndicator extends StatelessWidget implements ImageContent {
  const _ImageContentIndicator({
    required this.uri,
    super.key,
  });

  final String uri;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
      fadeInDuration: theme.durations.short,
      fadeOutDuration: theme.durations.short,
      errorWidget: (context, url, error) {
        return ColoredBox(
          color: theme.colorScheme.secondaryContainer,
          child: const ImageError(),
        );
      },
    );
  }
}
