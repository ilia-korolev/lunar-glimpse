import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';

const _imageAspectRatio = 4 / 3;

class MediaCard extends StatelessWidget {
  const MediaCard({
    required this.media,
    required this.onFavoritePressed,
    required this.onCardPressed,
    super.key,
  });

  final Media media;
  final void Function(Media media) onFavoritePressed;
  final void Function(Media media) onCardPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final buttonSize = 2 * theme.spacing.small +
        2 * theme.spacing.medium +
        theme.sizes.largeIconSize;

    final backgroundColor = ElevationOverlay.applySurfaceTint(
      theme.colorScheme.surface,
      theme.colorScheme.surfaceTint,
      3,
    );

    return CardBase(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _CardContent(media: media),
                  _CardInfo(media: media),
                ],
              ),
              Positioned(
                right: buttonSize / 2,
                top: constraints.maxWidth / _imageAspectRatio - buttonSize / 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    shape: BoxShape.circle,
                  ),
                  height: buttonSize,
                  width: buttonSize,
                ),
              ),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => onCardPressed(media),
                  ),
                ),
              ),
              Positioned(
                right: buttonSize / 2,
                top: constraints.maxWidth / _imageAspectRatio - buttonSize / 2,
                child: Padding(
                  padding: EdgeInsets.all(theme.spacing.small),
                  child: FavoriteButton(
                    isFavorite: media.isFavorite,
                    onPressed: () => onFavoritePressed(media),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    required this.media,
  });

  final Media media;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AspectRatio(
      aspectRatio: _imageAspectRatio,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(theme.radiuses.large),
        ),
        child: media.type == MediaType.image
            ? ImageContent(uri: media.uri.toString())
            : throw UnimplementedError(
                'A video player has not been implemented yet',
              ),
      ),
    );
  }
}

class _CardInfo extends StatelessWidget {
  const _CardInfo({
    required this.media,
  });

  final Media media;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(
        left: theme.spacing.semiLarge,
        right: theme.spacing.semiLarge,
        top: theme.spacing.semiLarge,
        bottom: theme.spacing.semiLarge,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            media.date.format('yMd'),
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
          SizedBox(height: theme.spacing.small),
          Text(
            media.title,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
