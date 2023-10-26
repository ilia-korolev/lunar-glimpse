import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class DailyMediaPage extends StatelessWidget {
  const DailyMediaPage({
    required this.date,
    super.key,
  });

  final Date date;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DailyMediaBloc(
        repository: GetIt.instance(),
      )..add(DailyMediaEvent.fetched(date: date)),
      child: Scaffold(
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
      appBar: MainAppBar(
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

    return SliverAppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: theme.spacing.semiSmall),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: theme.colorScheme.background.withOpacity(0.4),
          ),
          child: IconButton(
            // color:
            icon: const FaIcon(
              FontAwesomeIcons.chevronLeft,
            ),
            onPressed: () {
              context.pop();
            },
          ),
        ),
      ),
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: ImageContent(
          uri: media.uri.toString(),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: theme.spacing.semiSmall,
                bottom: theme.spacing.semiSmall,
              ),
              child: FavoriteButton(
                isFavorite: media.isFavorite,
                onPressed: () {
                  context
                      .read<DailyMediaBloc>()
                      .add(const DailyMediaEvent.favoriteToggled());
                },
              ),
            ),
            Container(
              height: theme.spacing.semiLarge,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: theme.radiuses.large,
                ),
                color: theme.colorScheme.background,
              ),
            ),
          ],
        ),
      ),
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
          if (media.copyright != null) ...[
            SizedBox(height: theme.spacing.medium),
            Text(
              context.l10n.copyrightLabel(
                media.copyright!.trim().replaceAll('\n', ''),
              ),
              style: theme.textTheme.labelSmall,
            ),
          ],
        ],
      ),
    );
  }
}
