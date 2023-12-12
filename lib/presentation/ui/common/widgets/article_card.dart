import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:intl/intl.dart';

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
    return CardBase(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (article.thumbnail != null) _CardContent(article: article),
                  _CardInfo(article: article),
                ],
              ),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => onCardPressed(article),
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
    required this.article,
  });

  final Article article;

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
        child: ImageContent(
          uri: article.thumbnail.toString(),
        ),
      ),
    );
  }
}

class _CardInfo extends StatelessWidget {
  const _CardInfo({
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

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
          Row(
            children: [
              Text(
                _formatDate(
                  date: article.date,
                  l10n: l10n,
                ),
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
              SizedBox(width: theme.spacing.semiLarge),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: theme.sizes.smallIconSize,
                      height: theme.sizes.smallIconSize,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: CachedNetworkImage(
                        imageUrl: article.source.favicon.toString(),
                      ),
                    ),
                    SizedBox(width: theme.spacing.small),
                    Flexible(
                      child: Text(
                        article.source.name,
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.outline,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: theme.spacing.small),
          Text(
            article.title,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
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

    return DateFormat.yMd().format(article.date);
  }
}
