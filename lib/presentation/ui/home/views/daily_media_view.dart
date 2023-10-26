import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';

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
            HomeAppBar(title: context.l10n.dailyMediaTitle),
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

          return MediaCard(media: mediaList[index]);
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
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final backgroundColor = ElevationOverlay.applySurfaceTint(
      theme.colorScheme.surface,
      theme.colorScheme.surfaceTint,
      3,
    );

    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Container(
          margin: EdgeInsets.all(theme.spacing.medium),
          padding: EdgeInsets.all(theme.spacing.medium),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(theme.radiuses.medium),
            color: backgroundColor,
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Lottie.asset(AssetNames.animations.astronautOnPlanet),
              Text(
                l10n.responseErrorTitle,
                style: theme.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: theme.spacing.small),
              Text(
                l10n.responseErrorText,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: theme.spacing.small),
              ElevatedButton(
                onPressed: () {
                  context
                      .read<DailyMediaListBloc>()
                      .add(const DailyMediaListEvent.triedAgain());
                },
                child: Text(l10n.tryAgainButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
