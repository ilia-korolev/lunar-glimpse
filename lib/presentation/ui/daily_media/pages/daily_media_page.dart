import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

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
    return Scaffold(
      body: BlocBuilder<DailyMediaBloc, DailyMediaState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const _LoadingView();
            },
            loading: () {
              return const _LoadingView();
            },
            success: (Media media) {
              return _SuccessView(media: media);
            },
            failure: (String message) {
              return const _FailureView();
            },
          );
        },
      ),
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
    return LayoutBuilder(
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

    final buttonSize = theme.sizes.largeIconSize + 2 * theme.spacing.medium;

    return SliverAppBar(
      leading: Padding(
        padding: EdgeInsets.only(
          left: theme.spacing.semiSmall,
          top: theme.spacing.semiSmall,
        ),
        child: PrimaryIconButton(
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
            right: theme.spacing.semiSmall,
            top: theme.spacing.semiSmall,
          ),
          child: _SaveImageButton(
            imageUri: media.hdUri,
          ),
        ),
      ],
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: GestureDetector(
          onTap: () {
            _showImageViewerDialog(context);
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
                  padding: theme.spacing.medium,
                  backgroundColor: theme.colorScheme.background,
                  elevation: 7,
                  onPressed: () async {
                    await Share.shareUri(media.uri);
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
                SizedBox(width: theme.spacing.large),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<Dialog?> _showImageViewerDialog(BuildContext context) {
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
                child: Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                      ),
                    ),
                    CachedNetworkImage(
                      imageUrl: media.hdUri.toString(),
                      progressIndicatorBuilder: (_, __, downloadProgress) {
                        final progress =
                            downloadProgress.progress?.clamp(0.0, 1.0) ?? 0.0;

                        return Center(
                          child: CircularProgressIndicator(value: progress),
                        );
                      },
                      errorWidget: (context, url, error) {
                        return const ImageError();
                      },
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: theme.spacing.semiSmall,
                top: theme.spacing.semiSmall,
                child: PrimaryIconButton(
                  backgroundColor:
                      theme.colorScheme.background.withOpacity(0.4),
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
        top: theme.spacing.semiSmall,
        left: theme.spacing.semiLarge,
        right: theme.spacing.semiLarge,
        bottom: theme.spacing.medium + bottomPadding,
      ),
      sliver: SliverList.list(
        children: [
          Text(
            media.title,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: theme.spacing.medium),
          Text(
            media.date.format('yMd'),
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: theme.spacing.medium),
          Text(
            media.explanation,
            style: theme.textTheme.bodyMedium,
          ),
          if (media.copyright case final copyright?) ...[
            SizedBox(height: theme.spacing.medium),
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
