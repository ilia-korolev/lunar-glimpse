import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/ui/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

const _imageAspectRatio = 16 / 9;

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    required this.article,
    required this.onCardPressed,
    super.key,
  });

  final Article article;

  final void Function(Article media) onCardPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return CardBase(
      onCardPressed: () => onCardPressed(article),
      thumbnailUri: article.thumbnail,
      title: article.title,
      info: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: theme.sizes.mediumIconSize,
            height: theme.sizes.mediumIconSize,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.antiAlias,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: article.source.favicon.toString(),
            ),
          ),
          SizedBox(width: theme.spacing.semiSmall),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                article.source.name,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
              Text(
                _formatDate(
                  date: article.date,
                  l10n: l10n,
                ),
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        PrimaryIconButton(
          icon: FontAwesomeIcons.shareNodes,
          iconColor: theme.colorScheme.onSurface,
          onPressed: () async {
            await Share.shareUri(article.uri);
          },
        ),
      ],
    );
  }

  String _formatDate({
    required DateTime date,
    required AppLocalizations l10n,
  }) {
    final now = DateTime.now().toUtc();
    final difference = now.difference(date);

    if (difference.inDays < 1 && difference.inHours >= 1) {
      return l10n.hoursAgo(difference.inHours);
    }

    if (difference.inHours < 1) {
      return l10n.minutesAgo(difference.inMinutes);
    }

    return DateFormat.yMd().format(article.date);
  }
}

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
      onCardPressed: () => onCardPressed(media),
      thumbnailUri: media.uri,
      title: media.title,
      info: Text(
        media.date.format('yMd'),
        style: theme.textTheme.bodyLarge!.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),
      actions: [
        PrimaryIconButton(
          icon: FontAwesomeIcons.shareNodes,
          iconColor: theme.colorScheme.onSurface,
          onPressed: () async {
            await Share.shareUri(media.uri);
          },
        ),
        PrimaryIconButton(
          onPressed: () => onFavoritePressed(media),
          icon: media.isFavorite
              ? FontAwesomeIcons.solidStar
              : FontAwesomeIcons.star,
          iconColor: media.isFavorite
              ? theme.customColors.blueberry
              : theme.colorScheme.onSurface,
        ),
      ],
    );
  }
}

class CardBase extends StatelessWidget {
  const CardBase({
    required this.title,
    required this.info,
    required this.onCardPressed,
    this.thumbnailUri,
    this.actions = const [],
    super.key,
  });

  final String title;
  final Widget info;
  final void Function() onCardPressed;

  final Uri? thumbnailUri;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.surfaceColors.surfaceContainer,
        borderRadius: BorderRadius.all(theme.radiuses.large),
      ),
      margin: EdgeInsets.symmetric(horizontal: theme.spacing.semiLarge),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (thumbnailUri != null) _Thumbnail(thumbnailUri: thumbnailUri!),
              _Info(
                title: title,
                info: info,
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onCardPressed,
              ),
            ),
          ),
          Positioned(
            right: theme.spacing.semiLarge,
            bottom: theme.spacing.semiSmall,
            child: Row(
              children: actions,
            ),
          ),
        ],
      ),
    );
  }
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail({
    required this.thumbnailUri,
  });

  final Uri thumbnailUri;

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
        child: ImageContent(uri: thumbnailUri.toString()),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({
    required this.title,
    required this.info,
  });

  final String title;
  final Widget info;

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
            title,
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onSurface,
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
            child: info,
          ),
        ],
      ),
    );
  }
}
