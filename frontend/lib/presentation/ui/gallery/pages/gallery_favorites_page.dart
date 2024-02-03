import 'dart:math' as math;

import 'package:astro_common/astro_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class GalleryFavoritesPage extends StatefulWidget {
  const GalleryFavoritesPage({super.key});

  @override
  State<GalleryFavoritesPage> createState() => _GalleryFavoritesPageState();
}

class _GalleryFavoritesPageState extends State<GalleryFavoritesPage> {
  final GalleryFavoritesBloc _bloc = GalleryFavoritesBloc(
    repository: GetIt.instance(),
  );

  @override
  void initState() {
    super.initState();

    if (_bloc.state.status.isInitial) {
      _bloc.add(const GalleryFavoritesEvent.fetched());
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

    return SelectionArea(
      child: SelectionTransformer.separated(
        child: BlocProvider.value(
          value: _bloc,
          child: Scaffold(
            appBar: PrimaryAppBar(
              height: theme.sizes.mediumAppBarHeight,
              title: Text(l10n.favoritesPageTitle),
            ),
            body: SafeArea(
              child: StreamListener(
                stream: _bloc.removedFavoriteStream,
                onData: (item) {
                  final removedSnackBar = SnackBar(
                    action: SnackBarAction(
                      label: l10n.removedFromFavoritesSnackBarButton,
                      onPressed: () {
                        GetIt.instance<GalleryBloc>()
                            .add(GalleryEvent.favoriteToggled(item: item));

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

                  GetIt.instance<GlobalKey<ScaffoldMessengerState>>()
                      .currentState
                    ?..clearSnackBars()
                    ..showSnackBar(removedSnackBar);
                },
                child: BlocBuilder<GalleryFavoritesBloc, GalleryFavoritesState>(
                  builder: (context, state) {
                    switch (state.status) {
                      case BlocStatus.initial:
                        return const _InitialView();

                      case BlocStatus.loading:
                        return state.items.isEmpty
                            ? const _LoadingView()
                            : _SuccessView(
                                galleryItems: state.items,
                              );

                      case BlocStatus.success:
                        return state.items.isEmpty
                            ? const _EmptyView()
                            : _SuccessView(
                                galleryItems: state.items,
                              );

                      case BlocStatus.failure:
                        return const _FailureView();
                    }
                  },
                ),
              ),
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
    required this.galleryItems,
  });

  final List<GalleryItem> galleryItems;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activeBreakpoint = Breakpoint.getActive(context);
    final padding =
        activeBreakpoint.isCompact ? theme.spacing.medium : theme.spacing.large;

    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = math.max(
          constraints.maxWidth ~/ theme.sizes.galleryItemCardMinWidth,
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
            return GalleryCard(
              item: galleryItems[index],
              onCardPressed: (context, item) {
                context.go('/gallery/favorites/${item.date.toInt()}');
              },
              onFavoritePressed: (context, item) async {
                if (item.isFavorite) {
                  context
                      .read<GalleryFavoritesBloc>()
                      .add(GalleryFavoritesEvent.itemUnfavorited(item: item));
                }
              },
              onSharePressed: (context, item) {
                GetIt.instance<ShareService>().shareUri(
                  uri: item.uri,
                  context: context,
                );
              },
            );
          },
          itemCount: galleryItems.length,
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
            .read<GalleryFavoritesBloc>()
            .add(const GalleryFavoritesEvent.triedAgain());
      },
    );
  }
}
