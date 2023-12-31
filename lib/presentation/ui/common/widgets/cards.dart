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

    return DateFormat.yMd().format(date);
  }
}

class MediaCard extends StatefulWidget {
  const MediaCard({
    required this.media,
    required this.onCardPressed,
    required this.onSharePressed,
    required this.onFavoritePressed,
    super.key,
  });

  final Media media;
  final void Function(Media media) onCardPressed;
  final void Function(Media media) onSharePressed;
  final void Function(Media media) onFavoritePressed;

  @override
  State<MediaCard> createState() => _MediaCardState();
}

class _MediaCardState extends State<MediaCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Stack(
          children: [
            _Thumbnail(thumbnailUri: widget.media.uri),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.all(theme.radiuses.large),
                  onTap: () => widget.onCardPressed(widget.media),
                ),
              ),
            ),
            if (_isHovered)
              Positioned(
                right: theme.spacing.semiSmall,
                bottom: theme.spacing.semiSmall,
                child: Row(
                  children: [
                    CardIconButton(
                      icon: FontAwesomeIcons.shareNodes,
                      onPressed: () async {
                        await Share.shareUri(widget.media.uri);
                      },
                    ),
                    SizedBox(width: theme.spacing.semiSmall),
                    CardIconButton(
                      onPressed: () => widget.onFavoritePressed(widget.media),
                      icon: widget.media.isFavorite
                          ? FontAwesomeIcons.solidStar
                          : FontAwesomeIcons.star,
                    ),
                  ],
                ),
              ),
            Positioned.fill(
              child: MouseRegion(
                hitTestBehavior: HitTestBehavior.translucent,
                onEnter: (event) {
                  setState(() {
                    _isHovered = true;
                  });
                },
                onExit: (event) {
                  setState(() {
                    _isHovered = false;
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(height: theme.spacing.small),
        Row(
          children: [
            Expanded(
              child: Text(
                widget.media.title,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              widget.media.date.format('yMd'),
              style: theme.textTheme.labelSmall!.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ],
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
