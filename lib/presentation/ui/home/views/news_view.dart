import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
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

    _bloc.add(const NewsEvent.fetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: PrimaryRefreshIndicator(
        onRefresh: () async {
          _bloc.add(const NewsEvent.refreshed());

          await _bloc.stream.firstWhere(
            (state) => !state.status.isLoading,
          );
        },
        child: CustomScrollView(
          slivers: [
            HomeAppBar(title: context.l10n.newsTitle),
            const _Body(),
          ],
        ),
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
        switch (state.status) {
          case BlocStatus.initial:
            return const _InitialView();

          case BlocStatus.loading:
            return state.articles.isEmpty
                ? const _LoadingView()
                : _SuccessView(
                    articles: state.articles,
                  );

          case BlocStatus.success:
            return _SuccessView(
              articles: state.articles,
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
    required this.articles,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverPadding(
      padding: EdgeInsets.only(bottom: theme.spacing.semiLarge),
      sliver: SliverList(
        delegate: SliverSeparatedChildBuilderDelegate(
          itemBuilder: (context, index) {
            final article = articles[index];

            return ArticleCard(
              article: article,
              onCardPressed: (article) {
                url_launcher.launchUrl(article.uri);
              },
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: theme.spacing.semiLarge);
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
