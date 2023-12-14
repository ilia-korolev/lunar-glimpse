import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

const _imageAspectRatio = 16 / 9;

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

    return CardBase(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _CardContent(media: media),
              _CardInfo(media: media),
            ],
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
            right: theme.spacing.semiLarge,
            bottom: theme.spacing.semiSmall,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        PrimaryIconButton(
                          icon: FontAwesomeIcons.shareNodes,
                          iconColor: theme.colorScheme.onPrimaryContainer,
                          onPressed: () async {
                            await Share.shareUri(media.uri);
                          },
                        ),
                      ],
                    ),
                    PrimaryIconButton(
                      onPressed: () => onFavoritePressed(media),
                      icon: media.isFavorite
                          ? FontAwesomeIcons.solidStar
                          : FontAwesomeIcons.star,
                      iconColor: media.isFavorite
                          ? theme.customColors.blueberry
                          : theme.colorScheme.onPrimaryContainer,
                    ),
                    // Text('Favorite')
                  ],
                ),
              ],
            ),
          ),
        ],
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
        top: theme.spacing.medium,
        bottom: theme.spacing.semiSmall,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            media.title,
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          SizedBox(height: theme.spacing.semiSmall),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          Container(
            height: theme.sizes.mediumIconSize + 2 * theme.spacing.medium,
            alignment: Alignment.centerLeft,
            child: Text(
              media.date.format('yMd'),
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
