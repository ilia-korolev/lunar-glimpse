import 'package:astro_common/astro_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/core/_export.dart';
import 'package:frontend/presentation/_export.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../widgets/_export.dart';

const _loadingTileCount = 12;

class GalleryView extends StatefulWidget {
  const GalleryView({super.key});

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> with WidgetsBindingObserver {
  final GalleryBloc _bloc = GetIt.instance();
  final _scrollController = ScrollToTopController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    _scrollController.addListener(_fetchItemsListener);

    if (_bloc.state.status.isInitial) {
      _bloc.add(const GalleryEvent.fetched());
    }
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();

    _fetchItemsListener();
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_fetchItemsListener)
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ScrollToTop(
      appBarHeight: theme.sizes.smallAppBarHeight,
      scrollController: _scrollController,
      child: SelectionArea(
        child: SelectionTransformer.separated(
          child: BlocProvider.value(
            value: _bloc,
            child: PrimaryRefreshIndicator(
              onRefresh: () async {
                _bloc.add(const GalleryEvent.refreshed());

                await _bloc.stream.firstWhere(
                  (state) => !state.status.isLoading,
                );
              },
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  HomeAppBar(
                    title: context.l10n.galleryTitle,
                    trailing: PrimaryIconButton(
                      icon: FontAwesomeIcons.solidStar,
                      size: IconButtonSize.medium,
                      onPressed: (_) {
                        context.go('/gallery/favorites');
                      },
                    ),
                  ),
                  const _GalleryContent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _fetchItemsListener() {
    if (!_bloc.state.status.isSuccess || _bloc.state.items.isEmpty) {
      return;
    }

    if (_isBottom) {
      _bloc.add(const GalleryEvent.fetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) {
      return false;
    }

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScrollOffset = _scrollController.offset;
    final loadedTileCount = _bloc.state.items.length;

    final tileHeight = maxScroll / (loadedTileCount + _loadingTileCount);
    final loadedListOffset = tileHeight * (loadedTileCount - _loadingTileCount);

    return currentScrollOffset >= loadedListOffset;
  }
}

class _GalleryContent extends StatelessWidget {
  const _GalleryContent();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryBloc, GalleryState>(
      builder: (context, state) {
        switch (state.status) {
          case BlocStatus.initial:
            return const _InitialView();

          case BlocStatus.loading:
            return state.items.isEmpty
                ? const _LoadingView()
                : _SuccessView(
                    galleryItems: state.items,
                    hasReachedMax: state.hasReachedMax,
                  );

          case BlocStatus.success:
            return _SuccessView(
              galleryItems: state.items,
              hasReachedMax: state.hasReachedMax,
            );

          case BlocStatus.failure:
            return const _FailureView();
        }
      },
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
    required this.hasReachedMax,
  });

  final List<GalleryItem> galleryItems;
  final bool hasReachedMax;

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
          final itemsPerRow = theme.sizes.calcGalleryItemsPerRow(
            availableWidth: constraints.crossAxisExtent,
          );

          final itemCount = hasReachedMax
              ? galleryItems.length
              : galleryItems.length +
                  (itemsPerRow - galleryItems.length % itemsPerRow) +
                  itemsPerRow;

          return SuperSliverGrid(
            itemCount: itemCount,
            itemsPerRow: itemsPerRow,
            spacing: padding,
            itemBuilder: (context, index) {
              if (index >= galleryItems.length) {
                return const LoadingGalleryCard();
              }

              return GalleryCard(
                item: galleryItems[index],
                onCardPressed: (context, item) {
                  context.go('/gallery/${item.date.toInt()}');
                },
                onFavoritePressed: (context, item) {
                  context
                      .read<GalleryBloc>()
                      .add(GalleryEvent.favoriteToggled(item: item));
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
            context.read<GalleryBloc>().add(const GalleryEvent.triedAgain());
          },
        ),
      ),
    );
  }
}
