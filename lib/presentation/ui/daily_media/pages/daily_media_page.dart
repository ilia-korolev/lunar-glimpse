import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class DailyMediaPage extends StatelessWidget {
  const DailyMediaPage({
    required this.date,
    super.key,
  });

  final Date date;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DailyMediaBloc(
            repository: GetIt.instance(),
          )..add(DailyMediaEvent.fetched(date: date)),
        ),
        BlocProvider(
          create: (context) => SaveFileBloc(
            repository: GetIt.instance(),
          ),
        ),
      ],
      child: Builder(
        builder: (context) {
          final theme = Theme.of(context);
          final l10n = context.l10n;
          final saveFileBloc = context.read<SaveFileBloc>();

          return StreamListener(
            stream: saveFileBloc.saveSuccessStream,
            onData: (path) {
              _showSuccessSnackBar(
                message: l10n.saveImageSuccessSnackBarText,
                path: path,
                theme: theme,
              );
            },
            child: StreamListener(
              stream: saveFileBloc.saveFailureStream,
              onData: (message) {
                _showFailureSnackBar(
                  message: l10n.saveImageFailedSnackBarText,
                  theme: theme,
                );
              },
              child: const _Body(),
            ),
          );
        },
      ),
    );
  }

  void _showSuccessSnackBar({
    required String message,
    required String path,
    required ThemeData theme,
  }) {
    final successSnackBar = SnackBar(
      content: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: message,
              style: theme.textTheme.labelMedium!.copyWith(
                color: theme.colorScheme.onInverseSurface,
              ),
            ),
            TextSpan(
              text: path,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );

    GetIt.instance<GlobalKey<ScaffoldMessengerState>>()
        .currentState
        ?.showSnackBar(successSnackBar);
  }

  void _showFailureSnackBar({
    required String message,
    required ThemeData theme,
  }) {
    final failureSnackBar = SnackBar(
      content: Text(message),
    );

    GetIt.instance<GlobalKey<ScaffoldMessengerState>>()
        .currentState
        ?.showSnackBar(failureSnackBar);
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final activeBreakpoint = Breakpoint.getActive(context);

    return BlocBuilder<DailyMediaBloc, DailyMediaState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const _LoadingView();
          },
          loading: () {
            return const _LoadingView();
          },
          success: (Media media) {
            return switch (activeBreakpoint) {
              Breakpoint.compact => _SuccessView(media: media),
              Breakpoint.medium => _SuccessView(media: media),
              Breakpoint.expanded => _ExpandedSuccessView(media: media),
            };
          },
          failure: (String message) {
            return const _FailureView();
          },
        );
      },
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _FailureView extends StatelessWidget {
  const _FailureView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        height: Theme.of(context).sizes.smallAppBarHeight,
      ),
      body: FailureView(
        onPressed: () {
          context
              .read<DailyMediaBloc>()
              .add(const DailyMediaEvent.triedAgain());
        },
      ),
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.media,
  });

  final Media media;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final imageSize = constraints.maxHeight * 0.7;

          return CustomScrollView(
            slivers: [
              _MediaAppBar(
                media: media,
                expandedHeight: imageSize,
              ),
              _MediaDescription(
                media: media,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _MediaAppBar extends StatelessWidget {
  const _MediaAppBar({
    required this.media,
    required this.expandedHeight,
  });

  final Media media;
  final double expandedHeight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final buttonSize = theme.sizes.largeIconSize + 2 * theme.spacing.semiSmall;

    return SliverAppBar(
      leading: Padding(
        padding: EdgeInsets.only(
          left: theme.spacing.small,
          top: theme.spacing.small,
        ),
        child: MediumIconButton(
          iconColor: theme.colorScheme.onPrimaryContainer,
          backgroundColor: theme.colorScheme.background.withOpacity(0.4),
          icon: FontAwesomeIcons.chevronLeft,
          onPressed: () {
            context.pop();
          },
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: theme.spacing.small,
            top: theme.spacing.small,
          ),
          child: _SaveImageButton(
            imageUri: media.hdUri,
            iconColor: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ],
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: GestureDetector(
          onTap: () {
            _showImageViewerDialog(
              context: context,
              media: media,
            );
          },
          child: ImageContent(
            uri: media.uri.toString(),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(
          buttonSize,
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              height: buttonSize / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: theme.radiuses.large,
                ),
                color: theme.colorScheme.background,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButtonBase(
                  icon: FontAwesomeIcons.shareNodes,
                  iconColor: theme.colorScheme.onPrimaryContainer,
                  iconSize: theme.sizes.largeIconSize,
                  padding: theme.spacing.semiSmall,
                  backgroundColor: theme.colorScheme.background,
                  elevation: 7,
                  onPressed: () {
                    GetIt.instance<ShareService>().shareUri(uri: media.uri);
                  },
                ),
                SizedBox(width: theme.spacing.semiLarge),
                FavoriteButton(
                  isFavorite: media.isFavorite,
                  onPressed: () {
                    context
                        .read<DailyMediaBloc>()
                        .add(const DailyMediaEvent.favoriteToggled());
                  },
                ),
                SizedBox(width: theme.spacing.extraLarge),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MediaDescription extends StatelessWidget {
  const _MediaDescription({
    required this.media,
  });

  final Media media;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return SliverPadding(
      padding: EdgeInsets.only(
        top: theme.spacing.small,
        left: theme.spacing.semiLarge,
        right: theme.spacing.semiLarge,
        bottom: theme.spacing.semiSmall + bottomPadding,
      ),
      sliver: SliverList.list(
        children: [
          Text(
            media.title,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: theme.spacing.semiSmall),
          Text(
            media.date.format('yMd'),
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: theme.spacing.semiSmall),
          Text(
            media.explanation,
            style: theme.textTheme.bodyMedium,
          ),
          if (media.copyright case final copyright?) ...[
            SizedBox(height: theme.spacing.semiSmall),
            Text(
              context.l10n.copyrightLabel(
                copyright.trim().replaceAll('\n', ''),
              ),
              style: theme.textTheme.labelSmall,
            ),
          ],
        ],
      ),
    );
  }
}

class _ExpandedSuccessView extends StatelessWidget {
  const _ExpandedSuccessView({
    required this.media,
  });

  final Media media;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: PrimaryAppBar(
        height: Theme.of(context).sizes.smallAppBarHeight,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final padding = math.max(
            (constraints.maxWidth - theme.sizes.expandedContentWidth) / 2,
            theme.spacing.large,
          );

          return ListView(
            padding: EdgeInsets.only(
              left: padding,
              right: padding,
              bottom: theme.spacing.large,
            ),
            children: [
              Text(
                media.title,
                style: theme.textTheme.headlineSmall,
              ),
              _ExpandedActionRow(media: media),
              SizedBox(height: theme.spacing.medium),
              _ExpandedImage(media: media),
              SizedBox(height: theme.spacing.large),
              Text(
                media.explanation,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ExpandedActionRow extends StatelessWidget {
  const _ExpandedActionRow({
    required this.media,
  });

  final Media media;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              media.date.format('yMd'),
              style: theme.textTheme.labelLarge!.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
            if (media.copyright case final copyright?) ...[
              Text(
                copyright.trim().replaceAll('\n', ''),
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
          ],
        ),
        const Spacer(),
        _SaveImageButton(
          imageUri: media.hdUri,
        ),
        SizedBox(width: theme.spacing.small),
        MediumIconButton(
          icon: FontAwesomeIcons.shareNodes,
          onPressed: () {
            GetIt.instance<ShareService>().shareUri(uri: media.uri);
          },
        ),
        SizedBox(width: theme.spacing.small),
        MediumIconButton(
          icon: media.isFavorite
              ? FontAwesomeIcons.solidStar
              : FontAwesomeIcons.star,
          onPressed: () {
            context
                .read<DailyMediaBloc>()
                .add(const DailyMediaEvent.favoriteToggled());
          },
        ),
      ],
    );
  }
}

class _ExpandedImage extends StatelessWidget {
  const _ExpandedImage({
    required this.media,
  });

  final Media media;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          theme.radiuses.large,
        ),
      ),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          ImageContent(
            uri: media.uri.toString(),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  _showImageViewerDialog(
                    context: context,
                    media: media,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SaveImageButton extends StatelessWidget {
  const _SaveImageButton({
    required this.imageUri,
    this.iconColor,
  });

  final Uri imageUri;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaveFileBloc, SaveFileState>(
      builder: (context, state) {
        final progress = state.mapOrNull<double>(
          ready: (_) => 0,
          inProgress: (value) => value.progress,
          complete: (_) => 1,
          failure: (_) => 0,
        );

        final isInProgress = state is SaveFileInProgress;

        return SaveFileButton(
          progress: progress,
          isDownloading: isInProgress,
          iconColor: iconColor,
          onStartSaving: state.maybeMap(
            inProgress: (_) => null,
            complete: (_) => null,
            orElse: () {
              return () {
                context.read<SaveFileBloc>().add(
                      SaveFileEvent.started(
                        fileUri: imageUri,
                      ),
                    );
              };
            },
          ),
        );
      },
    );
  }
}

Future<Dialog?> _showImageViewerDialog({
  required BuildContext context,
  required Media media,
}) {
  return showDialog<Dialog>(
    context: context,
    builder: (context) {
      final theme = Theme.of(context);

      return Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Stack(
          children: [
            InteractiveViewer(
              maxScale: 10,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: () => context.pop(),
                    ),
                  ),
                  Positioned.fill(
                    child: FractionallySizedBox(
                      widthFactor: 0.75,
                      heightFactor: 0.75,
                      child: Center(
                        child: CachedNetworkImage(
                          fit: BoxFit.contain,
                          imageUrl: media.hdUri.toString(),
                          progressIndicatorBuilder: (_, __, downloadProgress) {
                            final progress =
                                downloadProgress.progress?.clamp(0.0, 1.0) ??
                                    0.0;

                            return Center(
                              child: CircularProgressIndicator(
                                value: progress,
                              ),
                            );
                          },
                          errorWidget: (context, url, error) {
                            return const ImageError();
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: theme.spacing.small,
              top: theme.spacing.small,
              child: MediumIconButton(
                backgroundColor: theme.colorScheme.background.withOpacity(0.4),
                icon: FontAwesomeIcons.xmark,
                onPressed: () {
                  context.pop();
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
