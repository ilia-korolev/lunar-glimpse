import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../widgets/_export.dart';

const _loadingTileCount = 10;

class DailyMediaView extends StatefulWidget {
  const DailyMediaView({super.key});

  @override
  State<DailyMediaView> createState() => _DailyMediaViewState();
}

class _DailyMediaViewState extends State<DailyMediaView> {
  final DailyMediaListBloc _bloc = GetIt.instance();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _bloc.add(const DailyMediaListEvent.fetched());
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return BlocProvider.value(
      value: _bloc,
      child: RefreshIndicator(
        edgeOffset: statusBarHeight,
        backgroundColor: theme.colorScheme.secondaryContainer,
        color: theme.colorScheme.onSecondaryContainer,
        onRefresh: () async {
          _bloc.add(const DailyMediaListEvent.refreshed());

          await _bloc.stream.firstWhere(
            (state) => !state.status.isLoading,
          );
        },
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            HomeAppBar(
              title: context.l10n.dailyMediaTitle,
              trailing: PrimaryIconButton(
                onPressed: () {
                  context.go('/daily-media/favorites');
                },
                icon: FontAwesomeIcons.solidStar,
              ),
            ),
            const _MediaList(),
          ],
        ),
      ),
    );
  }

  void _onScroll() {
    if (!_bloc.state.status.isSuccess || _bloc.state.mediaList.isEmpty) {
      return;
    }

    if (_isBottom) {
      _bloc.add(const DailyMediaListEvent.fetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) {
      return false;
    }

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScrollOffset = _scrollController.offset;
    final loadedTileCount = _bloc.state.mediaList.length;

    final tileHeight = maxScroll / (loadedTileCount + _loadingTileCount);
    final loadedListOffset = tileHeight * (loadedTileCount - _loadingTileCount);

    return currentScrollOffset >= loadedListOffset;
  }
}

class _MediaList extends StatelessWidget {
  const _MediaList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailyMediaListBloc, DailyMediaListState>(
      builder: (context, state) {
        switch (state.status) {
          case BlocStatus.initial:
            return const _InitialView();

          case BlocStatus.loading:
            return state.mediaList.isEmpty
                ? const _LoadingView()
                : _SuccessView(
                    mediaList: state.mediaList,
                    hasReachedMax: state.hasReachedMax,
                  );

          case BlocStatus.success:
            return _SuccessView(
              mediaList: state.mediaList,
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
    required this.mediaList,
    required this.hasReachedMax,
  });

  final List<Media> mediaList;
  final bool hasReachedMax;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverList(
      delegate: SliverSeparatedChildBuilderDelegate(
        itemBuilder: (context, index) {
          if (index >= mediaList.length) {
            return const LoadingMediaCard();
          }

          return MediaCard(
            media: mediaList[index],
            onFavoritePressed: (Media media) {
              context
                  .read<DailyMediaListBloc>()
                  .add(DailyMediaListEvent.favoriteToggled(media));
            },
            onMediaPressed: (Media media) {
              context.go('/daily-media/${media.date.toInt()}');
            },
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: theme.spacing.semiLarge);
        },
        childCount: hasReachedMax
            ? mediaList.length
            : mediaList.length + _loadingTileCount,
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
      child: FailureView(
        onPressed: () {
          context
              .read<DailyMediaListBloc>()
              .add(const DailyMediaListEvent.triedAgain());
        },
      ),
    );
  }
}
