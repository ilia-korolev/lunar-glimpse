import 'package:astro_common/astro_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/core/_export.dart';
import 'package:frontend/presentation/_export.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class GalleryFavoritesPage extends StatefulWidget {
  const GalleryFavoritesPage({super.key});

  @override
  State<GalleryFavoritesPage> createState() => _GalleryFavoritesPageState();
}

class _GalleryFavoritesPageState extends State<GalleryFavoritesPage> {
  final GalleryFavoritesBloc _bloc = GalleryFavoritesBloc(
    galleryRepository: GetIt.instance(),
    appSettingsRepository: GetIt.instance(),
  );

  final _scrollController = ScrollToTopController();

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
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final appBarHeight = theme.sizes.mediumAppBarHeight;

    return ScrollToTop(
      appBarHeight: appBarHeight,
      scrollController: _scrollController,
      child: SelectionArea(
        child: SelectionTransformer.separated(
          child: BlocProvider.value(
            value: _bloc,
            child: Scaffold(
              appBar: PrimaryAppBar(
                height: appBarHeight,
                title: Text(l10n.favoritesPageTitle),
              ),
              body: SafeArea(
                child: StreamListener(
                  stream: _bloc.removedFavoriteStream,
                  onData: (item) {
                    _scrollController.update();

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
                  child: CustomScrollView(
                    controller: _scrollController,
                    slivers: const [
                      _GalleryContent(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GalleryContent extends StatelessWidget {
  const _GalleryContent();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryFavoritesBloc, GalleryFavoritesState>(
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
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return SliverFillRemaining(
      hasScrollBody: false,
      child: SizedBox.shrink(
        child: ImageView(
          assetName: AssetNames.animations.astronautOnPlanet,
          child: Text(
            l10n.favoritesPageNoFavoritesText,
            style: theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class _InitialView extends StatelessWidget {
  const _InitialView();

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(child: Container());
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator(),
      ),
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

    return SliverPadding(
      padding: EdgeInsets.only(
        bottom: padding,
        left: padding,
        right: padding,
      ),
      sliver: SliverLayoutBuilder(
        builder: (context, constraints) {
          final crossAxisCount = theme.sizes.calcGalleryItemsPerRow(
            availableWidth: constraints.crossAxisExtent,
          );

          return SuperSliverGrid(
            itemsPerRow: crossAxisCount,
            spacing: padding,
            itemCount: galleryItems.length,
            itemBuilder: (context, index) {
              return GalleryCard(
                item: galleryItems[index],
                onCardPressed: (context, item) {
                  context.go('/gallery/favorites/${item.date.toInt()}');
                },
                onFavoritePressed: (context, item) {
                  context
                      .read<GalleryFavoritesBloc>()
                      .add(GalleryFavoritesEvent.itemUnfavorited(item: item));
                },
                onSharePressed: (context, item) {
                  GetIt.instance<ShareService>().shareUri(
                    uri: item.uri,
                    context: context,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _FailureView extends StatelessWidget {
  const _FailureView();

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: SizedBox.shrink(
        child: FailureView(
          onPressed: () {
            context
                .read<GalleryFavoritesBloc>()
                .add(const GalleryFavoritesEvent.triedAgain());
          },
        ),
      ),
    );
  }
}
