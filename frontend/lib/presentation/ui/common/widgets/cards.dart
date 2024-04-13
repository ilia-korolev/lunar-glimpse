import 'package:astro_common/astro_common.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/presentation/ui/_export.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

const _imageAspectRatio = 16 / 9;

class CompactArticleCard extends StatelessWidget {
  const CompactArticleCard({
    required this.article,
    required this.onCardPressed,
    required this.onSharePressed,
    super.key,
  });

  final Article article;
  final void Function(BuildContext context, Article article) onCardPressed;
  final void Function(BuildContext context, Article article) onSharePressed;

  @override
  Widget build(BuildContext context) {
    final thumbnailUri = article.thumbnail;

    return Center(
      child: _ArticleCardBase(
        article: article,
        onCardPressed: onCardPressed,
        onSharePressed: onSharePressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (thumbnailUri != null) ...[
              _Thumbnail(thumbnailUri: thumbnailUri),
            ],
            _ArticleInfo(
              article: article,
              isExpanded: false,
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedArticleCard extends StatelessWidget {
  const ExpandedArticleCard({
    required this.article,
    required this.onCardPressed,
    required this.onSharePressed,
    super.key,
  });

  final Article article;
  final void Function(BuildContext context, Article article) onCardPressed;
  final void Function(BuildContext context, Article article) onSharePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final thumbnailUri = article.thumbnail;

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: theme.sizes.wideContentWidth,
          maxHeight: theme.sizes.expandedArticleCardHeight,
        ),
        child: _ArticleCardBase(
          article: article,
          onCardPressed: onCardPressed,
          onSharePressed: onSharePressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (thumbnailUri != null) ...[
                _Thumbnail(thumbnailUri: thumbnailUri),
              ],
              Expanded(
                child: _ArticleInfo(
                  article: article,
                  isExpanded: thumbnailUri != null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GalleryCard extends StatefulWidget {
  const GalleryCard({
    required this.item,
    required this.onCardPressed,
    required this.onSharePressed,
    required this.onFavoritePressed,
    super.key,
  });

  final GalleryItem item;
  final void Function(BuildContext context, GalleryItem item) onCardPressed;
  final void Function(BuildContext context, GalleryItem item) onSharePressed;
  final void Function(BuildContext context, GalleryItem item) onFavoritePressed;

  @override
  State<GalleryCard> createState() => _GalleryCardState();
}

class _GalleryCardState extends State<GalleryCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final lightTheme = GetIt.instance<Theming>().light;
    final isMobile = theme.platform == TargetPlatform.android ||
        theme.platform == TargetPlatform.iOS;

    return Column(
      children: [
        Skeleton.leaf(
          child: Stack(
            children: [
              _Thumbnail(thumbnailUri: widget.item.uri),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.all(theme.radiuses.large),
                    onTap: () => widget.onCardPressed(context, widget.item),
                  ),
                ),
              ),
              if (isMobile || _isHovered)
                Positioned(
                  right: theme.spacing.semiSmall,
                  bottom: theme.spacing.semiSmall,
                  child: Row(
                    children: [
                      PrimaryIconButton(
                        icon: FontAwesomeIcons.shareNodes,
                        size: IconButtonSize.small,
                        onPressed: (context) {
                          return widget.onSharePressed(
                            context,
                            widget.item,
                          );
                        },
                        iconColor: lightTheme.colorScheme.onSurface,
                        backgroundColor: lightTheme.colorScheme.surface,
                      ),
                      SizedBox(width: theme.spacing.semiSmall),
                      PrimaryIconButton(
                        icon: widget.item.isFavorite
                            ? FontAwesomeIcons.solidStar
                            : FontAwesomeIcons.star,
                        size: IconButtonSize.small,
                        onPressed: (context) {
                          return widget.onFavoritePressed(
                            context,
                            widget.item,
                          );
                        },
                        iconColor: widget.item.isFavorite
                            ? lightTheme.colorScheme.surface
                            : lightTheme.colorScheme.onSurface,
                        backgroundColor: widget.item.isFavorite
                            ? lightTheme.colorScheme.primary
                            : lightTheme.colorScheme.surface,
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
        ),
        SizedBox(height: theme.spacing.small),
        Row(
          children: [
            Expanded(
              child: Text(
                widget.item.title,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              widget.item.date.format('yMd', l10n.localeName),
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

class _ArticleCardBase extends StatelessWidget {
  const _ArticleCardBase({
    required this.child,
    required this.article,
    required this.onCardPressed,
    required this.onSharePressed,
  });

  final Widget child;
  final Article article;
  final void Function(BuildContext context, Article article) onCardPressed;
  final void Function(BuildContext context, Article article) onSharePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.surfaceColors.surfaceContainer,
        borderRadius: BorderRadius.all(theme.radiuses.large),
      ),
      child: Stack(
        children: [
          child,
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(theme.radiuses.large),
                onTap: () => onCardPressed(context, article),
              ),
            ),
          ),
          Positioned(
            right: theme.spacing.medium,
            bottom: theme.spacing.small,
            child: PrimaryIconButton(
              icon: FontAwesomeIcons.shareNodes,
              size: IconButtonSize.small,
              onPressed: (context) => onSharePressed(context, article),
            ),
          ),
        ],
      ),
    );
  }
}

class _ArticleInfo extends StatelessWidget {
  const _ArticleInfo({
    required this.article,
    required this.isExpanded,
  });

  final Article article;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    final iconButtonSize = IconButtonSize.small.getButtonSize(context);

    return Padding(
      padding: EdgeInsets.only(
        top: theme.spacing.medium,
        left: theme.spacing.medium,
        right: theme.spacing.medium,
        bottom: theme.spacing.small,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                  imageUrl: article.source.iconUri.toString(),
                ),
              ),
              SizedBox(width: theme.spacing.small),
              Text(
                article.source.name,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.outline,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
          SizedBox(height: theme.spacing.small),
          Expanded(
            flex: isExpanded ? 1 : 0,
            child: Text(
              article.title,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            height: iconButtonSize,
            alignment: Alignment.centerLeft,
            child: Text(
              _formatDate(
                date: article.date,
                l10n: l10n,
              ),
              style: theme.textTheme.labelMedium!.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ),
        ],
      ),
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

    return DateFormat.yMd(l10n.localeName).format(date);
  }
}
