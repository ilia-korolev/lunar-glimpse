import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '_export.dart';

const _imageAspectRatio = 4 / 3;

class MediaCard extends StatelessWidget {
  const MediaCard({
    required this.media,
    super.key,
  });

  final Media media;

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

    final radius = theme.radiuses.large;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(radius),
      ),
      margin: EdgeInsets.symmetric(horizontal: theme.spacing.semiLarge),
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
                    onTap: () {
                      context.go('/daily-media/${media.date.toInt()}');
                    },
                  ),
                ),
              ),
              Positioned(
                right: buttonSize / 2,
                top: constraints.maxWidth / _imageAspectRatio - buttonSize / 2,
                child: Padding(
                  padding: EdgeInsets.all(theme.spacing.small),
                  child: _FavoriteButton(
                    isFavorite: media.isFavorite,
                    onPressed: () {
                      context
                          .read<DailyMediaBloc>()
                          .add(DailyMediaEvent.favoriteToggled(media));
                    },
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
            ? Hero(
                tag: media,
                child: ImageContent(uri: media.uri.toString()),
              )
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

class _FavoriteButton extends StatelessWidget {
  const _FavoriteButton({
    required this.isFavorite,
    required this.onPressed,
  });

  final bool isFavorite;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final iconColor =
        GetIt.instance<Theming>().dark.colorScheme.onSecondaryContainer;

    return Material(
      type: MaterialType.circle,
      color: theme.customColors.tomato,
      shadowColor: theme.customColors.tomato,
      elevation: 7,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.all(theme.spacing.medium),
          child: FaIcon(
            isFavorite ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
            color: iconColor,
            size: theme.sizes.largeIconSize,
            // TODO(ilia-korolev): fix the shadow when it's ready
            // https://github.com/fluttercommunity/font_awesome_flutter/pull/247
            // shadows: [
            //   Shadow(
            //     color: iconColor.withOpacity(.5),
            //     blurRadius: theme.sizes.largeIconSize,
            //   ),
            // ],
          ),
        ),
      ),
    );
  }
}
