import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../widgets/_export.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  final NewsBloc _bloc = GetIt.instance();

  @override
  void initState() {
    super.initState();

    if (_bloc.state.status.isInitial) {
      _bloc.add(const NewsEvent.fetched());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: SelectionTransformer.separated(
        child: BlocProvider.value(
          value: _bloc,
          child: PrimaryRefreshIndicator(
            onRefresh: () async {
              _bloc.add(const NewsEvent.refreshed());

              await _bloc.stream.firstWhere(
                (state) => !state.status.isLoading,
              );
            },
            child: const Row(
              children: [
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      _AppBar(),
                      _Body(),
                    ],
                  ),
                ),
                _NewsSourcePanel(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activeBreakpoint = Breakpoint.getActive(context);

    return HomeAppBar(
      title: context.l10n.newsTitle,
      trailing: activeBreakpoint.isLarge
          ? null
          : PrimaryIconButton(
              icon: FontAwesomeIcons.sliders,
              size: IconButtonSize.medium,
              onPressed: (_) async {
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (context) => _NewsSourceList(
                    backgroundColor: Colors.transparent,
                    tileColor: theme.surfaceColors.surfaceContainerLowest,
                    onApplyPressed: () {
                      context.pop();
                    },
                  ),
                );
              },
            ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        return switch (state.status) {
          BlocStatus.initial => const _InitialView(),
          BlocStatus.loading => state.articles.isEmpty
              ? const _LoadingView()
              : _SuccessView(articles: state.articles),
          BlocStatus.success => state.articles.isEmpty
              ? const _NewsSourcesView()
              : _SuccessView(articles: state.articles),
          BlocStatus.failure => const _FailureView(),
        };
      },
    );
  }
}

class _NewsSourcePanel extends StatelessWidget {
  const _NewsSourcePanel();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activeBreakpoint = Breakpoint.getActive(context);

    return AnimatedSize(
      duration: theme.durations.long,
      curve: Curves.easeInOutCubicEmphasized,
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: activeBreakpoint.isLarge ? theme.sizes.panelWidth : 0,
        child: OverflowBox(
          maxWidth: theme.sizes.panelWidth,
          alignment: Alignment.centerLeft,
          child: _NewsSourceList(
            backgroundColor: ElevationOverlay.applySurfaceTint(
              theme.colorScheme.surface,
              theme.colorScheme.surfaceTint,
              3,
            ),
            tileColor: theme.surfaceColors.surfaceContainerLowest,
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
    required this.articles,
  });

  final List<Article> articles;

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
      sliver: SliverList(
        delegate: SliverSeparatedChildBuilderDelegate(
          itemBuilder: (context, index) {
            final article = articles[index];

            switch (activeBreakpoint) {
              case Breakpoint.compact:
              case Breakpoint.medium:
                return CompactArticleCard(
                  article: article,
                  onCardPressed: (context, article) {
                    url_launcher.launchUrl(article.uri);
                  },
                  onSharePressed: (context, article) {
                    GetIt.instance<ShareService>().shareUri(
                      uri: article.uri,
                      context: context,
                    );
                  },
                );

              case Breakpoint.expanded:
              case Breakpoint.large:
                return ExpandedArticleCard(
                  article: article,
                  onCardPressed: (context, article) {
                    url_launcher.launchUrl(article.uri);
                  },
                  onSharePressed: (context, article) {
                    GetIt.instance<ShareService>().shareUri(
                      uri: article.uri,
                      context: context,
                    );
                  },
                );
            }
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: padding);
          },
          childCount: articles.length,
        ),
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
          context.read<NewsBloc>().add(const NewsEvent.triedAgain());
        },
      ),
    );
  }
}

class _NewsSourcesView extends StatelessWidget {
  const _NewsSourcesView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverFillRemaining(
      hasScrollBody: false,
      child: SizedBox.shrink(
        child: _NewsSourceList(
          backgroundColor: Colors.transparent,
          tileColor: theme.surfaceColors.surfaceContainer,
        ),
      ),
    );
  }
}

class _NewsSourceList extends StatelessWidget {
  const _NewsSourceList({
    required this.backgroundColor,
    required this.tileColor,
    this.onApplyPressed,
  });

  final Color backgroundColor;
  final Color tileColor;
  final void Function()? onApplyPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => NewsSourcesBloc(
        newsRepository: GetIt.instance(),
      )..add(const NewsSourcesEvent.initialized()),
      child: Builder(
        builder: (context) {
          return BlocBuilder<NewsSourcesBloc, NewsSourcesState>(
            builder: (context, state) {
              final localeToInputsMap =
                  groupBy(state.inputs, (i) => i.source.locale);

              return LayoutBuilder(
                builder: (context, constraints) {
                  final double padding = math.max(
                    (constraints.maxWidth - theme.sizes.narrowContentWidth) / 2,
                    theme.spacing.medium,
                  );

                  return _NewsSourceListBody(
                    padding: padding,
                    tileColor: tileColor,
                    backgroundColor: backgroundColor,
                    localeToInputsMap: localeToInputsMap,
                    onApplyPressed: state.isPure
                        ? null
                        : () {
                            context.read<NewsSourcesBloc>().add(
                                  const NewsSourcesEvent.changesApplied(),
                                );

                            onApplyPressed?.call();
                          },
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

class _NewsSourceListBody extends StatelessWidget {
  const _NewsSourceListBody({
    required this.backgroundColor,
    required this.padding,
    required this.tileColor,
    required this.localeToInputsMap,
    required this.onApplyPressed,
  });

  final Color backgroundColor;
  final double padding;
  final Color tileColor;
  final Map<Locale, List<NewsSourceInput>> localeToInputsMap;
  final void Function()? onApplyPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    final locales = localeToInputsMap.keys.toList();

    return ColoredBox(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: theme.spacing.extraLarge),
          Padding(
            padding: EdgeInsets.only(left: padding),
            child: Text(
              l10n.newsSourcesTitle,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: theme.spacing.small),
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: padding),
              itemBuilder: (context, index) {
                final locale = locales[index];
                final l10n = lookupAppLocalizations(locale);

                // TODO(ilia-korolev): InkSplash functionality is broken
                // Fixed in pull request: https://github.com/flutter/flutter/pull/141777
                // Remove this comment when the fix is released
                return ExpansionTile(
                  leading: SizedBox(
                    width: theme.sizes.largeIconSize,
                    height: theme.sizes.largeIconSize,
                    child: Image.asset(locale.flagAsset),
                  ),
                  title: Text(l10n.languageName),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(theme.radiuses.medium),
                  ),
                  collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(theme.radiuses.medium),
                  ),
                  collapsedBackgroundColor: tileColor,
                  backgroundColor: tileColor,
                  tilePadding: EdgeInsets.symmetric(
                    vertical: theme.spacing.extraSmall,
                    horizontal: theme.spacing.small,
                  ),
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Divider(
                      indent: theme.spacing.small,
                      endIndent: theme.spacing.small,
                      height: 1,
                    ),
                    SizedBox(height: theme.spacing.extraSmall),
                    ...localeToInputsMap[locale]!
                        .map((i) => _NewsSourceTile(input: i)),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: theme.spacing.semiSmall);
              },
              itemCount: localeToInputsMap.length,
            ),
          ),
          SizedBox(height: theme.spacing.medium),
          Center(
            child: PrimaryButton(
              text: l10n.applyButton,
              onPressed: onApplyPressed,
            ),
          ),
        ],
      ),
    );
  }
}

class _NewsSourceTile extends StatelessWidget {
  const _NewsSourceTile({
    required this.input,
  });

  final NewsSourceInput input;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Text(input.source.name),
      leading: Container(
        width: theme.sizes.mediumIconSize,
        height: theme.sizes.mediumIconSize,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        clipBehavior: Clip.antiAlias,
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: input.source.favicon.toString(),
        ),
      ),
      trailing: Switch.adaptive(
        value: input.isShown,
        onChanged: (bool value) {
          context.read<NewsSourcesBloc>().add(
                NewsSourcesEvent.sourceShowToggled(
                  input: input,
                ),
              );
        },
      ),
    );
  }
}
