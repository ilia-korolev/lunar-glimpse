import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/models/media.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class FavoriteMediaPage extends StatefulWidget {
  const FavoriteMediaPage({super.key});

  @override
  State<FavoriteMediaPage> createState() => _FavoriteMediaPageState();
}

class _FavoriteMediaPageState extends State<FavoriteMediaPage> {
  final FavoriteMediaListBloc _bloc = FavoriteMediaListBloc(
    repository: GetIt.instance(),
  );

  @override
  void initState() {
    super.initState();

    if (_bloc.state.status.isInitial) {
      _bloc.add(const FavoriteMediaListEvent.fetched());
    }
  }

  @override
  void dispose() {
    _bloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: PrimaryAppBar(
          height: theme.sizes.mediumAppBarHeight,
          title: Text(l10n.favoritesPageTitle),
        ),
        body: SafeArea(
          child: StreamListener(
            stream: _bloc.removedFavoriteStream,
            onData: (media) {
              final removedSnackBar = SnackBar(
                action: SnackBarAction(
                  label: l10n.removedFromFavoritesSnackBarButton,
                  onPressed: () {
                    GetIt.instance<DailyMediaListBloc>()
                        .add(DailyMediaListEvent.favoriteToggled(media));

                    final restoredSnackBar = SnackBar(
                      content: Text(l10n.favoriteRestoredSnackBarButton),
                    );

                    GetIt.instance<GlobalKey<ScaffoldMessengerState>>()
                        .currentState
                      ?..clearSnackBars()
                      ..showSnackBar(restoredSnackBar);
                  },
                ),
                content: Text(l10n.removedFromFavoritesSnackBarText),
              );

              GetIt.instance<GlobalKey<ScaffoldMessengerState>>().currentState
                ?..clearSnackBars()
                ..showSnackBar(removedSnackBar);
            },
            child: BlocBuilder<FavoriteMediaListBloc, FavoriteMediaListState>(
              builder: (context, state) {
                switch (state.status) {
                  case BlocStatus.initial:
                    return const _InitialView();

                  case BlocStatus.loading:
                    return state.mediaList.isEmpty
                        ? const _LoadingView()
                        : _SuccessView(
                            mediaList: state.mediaList,
                          );

                  case BlocStatus.success:
                    return state.mediaList.isEmpty
                        ? const _EmptyView()
                        : _SuccessView(
                            mediaList: state.mediaList,
                          );

                  case BlocStatus.failure:
                    return const _FailureView();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return ImageView(
      assetName: AssetNames.animations.astronautOnPlanet,
      child: Text(
        l10n.favoritesPageNoFavoritesText,
        style: theme.textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _InitialView extends StatelessWidget {
  const _InitialView();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.mediaList,
  });

  final List<Media> mediaList;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activeBreakpoint = Breakpoint.getActive(context);
    final padding =
        activeBreakpoint.isCompact ? theme.spacing.medium : theme.spacing.large;

    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = math.max(
          constraints.maxWidth ~/ theme.sizes.mediaCardMinWidth,
          1,
        );

        return AlignedGridView.count(
          padding: EdgeInsets.only(
            bottom: padding,
            left: padding,
            right: padding,
          ),
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: padding,
          crossAxisSpacing: padding,
          itemBuilder: (context, index) {
            return MediaCard(
              media: mediaList[index],
              onCardPressed: (context, media) {
                context.go('/daily-media/favorites/${media.date.toInt()}');
              },
              onFavoritePressed: (context, media) async {
                if (media.isFavorite) {
                  context
                      .read<FavoriteMediaListBloc>()
                      .add(FavoriteMediaListEvent.favoriteRemoved(media));
                }
              },
              onSharePressed: (context, media) {
                GetIt.instance<ShareService>().shareUri(
                  uri: media.uri,
                  context: context,
                );
              },
            );
          },
          itemCount: mediaList.length,
        );
      },
    );
  }
}

class _FailureView extends StatelessWidget {
  const _FailureView();

  @override
  Widget build(BuildContext context) {
    return FailureView(
      onPressed: () {
        context
            .read<FavoriteMediaListBloc>()
            .add(const FavoriteMediaListEvent.triedAgain());
      },
    );
  }
}
