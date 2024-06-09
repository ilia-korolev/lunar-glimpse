import 'dart:math' as math;

import 'package:astro_common/astro_common.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/core/_export.dart';
import 'package:frontend/presentation/_export.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class GalleryItemPage extends StatelessWidget {
  const GalleryItemPage({
    required this.date,
    super.key,
  });

  final Date date;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: SelectionTransformer.separated(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => GalleryItemBloc(
                galleryRepository: GetIt.instance(),
                appSettingsRepository: GetIt.instance(),
              )..add(GalleryItemEvent.fetched(date: date)),
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
        ),
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

    return BlocBuilder<GalleryItemBloc, GalleryItemState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const _LoadingView();
          },
          loading: () {
            return const _LoadingView();
          },
          success: (GalleryItem item) {
            return switch (activeBreakpoint) {
              Breakpoint.compact => _SuccessView(item: item),
              Breakpoint.medium => _SuccessView(item: item),
              Breakpoint.expanded => _ExpandedSuccessView(item: item),
              Breakpoint.large => _ExpandedSuccessView(item: item),
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
              .read<GalleryItemBloc>()
              .add(const GalleryItemEvent.triedAgain());
        },
      ),
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.item,
  });

  final GalleryItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final imageSize = constraints.maxHeight * 0.7;

          return CustomScrollView(
            slivers: [
              _GalleryItemAppBar(
                item: item,
                expandedHeight: imageSize,
              ),
              _GalleryItemDescription(
                item: item,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _GalleryItemAppBar extends StatelessWidget {
  const _GalleryItemAppBar({
    required this.item,
    required this.expandedHeight,
  });

  final GalleryItem item;
  final double expandedHeight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lightTheme = GetIt.instance<Theming>().light;

    final buttonSize = theme.sizes.largeIconSize + 2 * theme.spacing.semiSmall;

    return SliverAppBar(
      leading: Padding(
        padding: EdgeInsets.only(
          left: theme.spacing.small,
          top: theme.spacing.small,
        ),
        child: PrimaryIconButton(
          icon: FontAwesomeIcons.chevronLeft,
          size: IconButtonSize.medium,
          backgroundColor: theme.colorScheme.surface.withOpacity(0.4),
          onPressed: (_) => context.pop(),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: theme.spacing.small,
            top: theme.spacing.small,
          ),
          child: _SaveImageButton(
            imageUri: item.hdUri,
          ),
        ),
      ],
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: GestureDetector(
          onTap: () {
            _showImageViewerDialog(
              context: context,
              item: item,
            );
          },
          child: ImageContent(
            uri: item.uri.toString(),
          ),
        ),
      ),
      // TODO(ilia-korolev): Anti-aliasing bug workaround
      // https://github.com/flutter/flutter/issues/14288
      shape: Border(
        bottom: BorderSide(
          width: 0,
          color: theme.colorScheme.surface,
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
                color: theme.colorScheme.surface,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PrimaryIconButton(
                  icon: FontAwesomeIcons.shareNodes,
                  size: IconButtonSize.large,
                  iconColor: theme.colorScheme.onSurface,
                  backgroundColor: theme.surfaceColors.surfaceContainerHigh,
                  elevation: 7,
                  onPressed: (BuildContext context) {
                    GetIt.instance<ShareService>().shareUri(
                      uri: item.uri,
                      context: context,
                    );
                  },
                ),
                SizedBox(width: theme.spacing.semiLarge),
                PrimaryIconButton(
                  icon: item.isFavorite
                      ? FontAwesomeIcons.solidStar
                      : FontAwesomeIcons.star,
                  size: IconButtonSize.large,
                  iconColor: item.isFavorite
                      ? lightTheme.colorScheme.surface
                      : theme.colorScheme.onSurface,
                  backgroundColor: item.isFavorite
                      ? lightTheme.colorScheme.primary
                      : theme.surfaceColors.surfaceContainerHigh,
                  elevation: 7,
                  onPressed: (_) {
                    context
                        .read<GalleryItemBloc>()
                        .add(const GalleryItemEvent.favoriteToggled());
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

class _GalleryItemDescription extends StatelessWidget {
  const _GalleryItemDescription({
    required this.item,
  });

  final GalleryItem item;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return SliverPadding(
      padding: EdgeInsets.only(
        top: theme.spacing.small,
        left: theme.spacing.semiLarge,
        right: theme.spacing.semiLarge,
        bottom: theme.spacing.semiLarge + bottomPadding,
      ),
      sliver: SliverList.list(
        children: [
          Text(
            item.title,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: theme.spacing.semiSmall),
          Text(
            item.date.format('yMd', l10n.localeName),
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: theme.spacing.semiSmall),
          Text(
            item.explanation,
            style: theme.textTheme.bodyMedium,
          ),
          if (item.copyright case final copyright?) ...[
            SizedBox(height: theme.spacing.semiSmall),
            Text(
              l10n.copyrightLabel(
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
    required this.item,
  });

  final GalleryItem item;

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
            (constraints.maxWidth - theme.sizes.wideContentWidth) / 2,
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
                item.title,
                style: theme.textTheme.headlineSmall,
              ),
              _ExpandedActionRow(item: item),
              SizedBox(height: theme.spacing.medium),
              _ExpandedImage(item: item),
              SizedBox(height: theme.spacing.large),
              Text(
                item.explanation,
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
    required this.item,
  });

  final GalleryItem item;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.date.format('yMd', l10n.localeName),
              style: theme.textTheme.labelLarge!.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
            if (item.copyright case final copyright?) ...[
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
          imageUri: item.hdUri,
        ),
        SizedBox(width: theme.spacing.small),
        PrimaryIconButton(
          icon: FontAwesomeIcons.shareNodes,
          size: IconButtonSize.medium,
          onPressed: (BuildContext context) {
            GetIt.instance<ShareService>().shareUri(
              uri: item.uri,
              context: context,
            );
          },
        ),
        SizedBox(width: theme.spacing.small),
        PrimaryIconButton(
          icon: item.isFavorite
              ? FontAwesomeIcons.solidStar
              : FontAwesomeIcons.star,
          size: IconButtonSize.medium,
          onPressed: (_) {
            context
                .read<GalleryItemBloc>()
                .add(const GalleryItemEvent.favoriteToggled());
          },
        ),
      ],
    );
  }
}

class _ExpandedImage extends StatelessWidget {
  const _ExpandedImage({
    required this.item,
  });

  final GalleryItem item;

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
            uri: item.uri.toString(),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  _showImageViewerDialog(
                    context: context,
                    item: item,
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
  });

  final Uri imageUri;

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
          onStartSaving: state.maybeMap(
            inProgress: (_) => null,
            complete: (_) => null,
            orElse: () {
              return () {
                // Due to CORS restrictions
                // the image will be opened in a new tab.
                if (Platform.isWeb) {
                  url_launcher.launchUrl(imageUri);
                  return;
                }

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
  required GalleryItem item,
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
                          imageUrl: item.hdUri.toString(),
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
              child: PrimaryIconButton(
                icon: FontAwesomeIcons.xmark,
                size: IconButtonSize.medium,
                backgroundColor: theme.colorScheme.surface.withOpacity(0.4),
                onPressed: (_) => context.pop(),
              ),
            ),
          ],
        ),
      );
    },
  );
}
