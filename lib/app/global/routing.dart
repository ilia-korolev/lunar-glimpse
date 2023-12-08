import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:go_router/go_router.dart';

class Routing {
  static final appRouter = GoRouter(
    initialLocation: HomePageTab.dailyMedia.path,
    routes: [
      GoRoute(
        path: HomePageTab.dailyMedia.path,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: HomePage(
              tab: HomePageTab.dailyMedia,
            ),
          );
        },
        routes: [
          GoRoute(
            path: 'favorites',
            builder: (context, state) {
              return const FavoriteMediaPage();
            },
            routes: [
              _dailyMediaRoute,
            ],
          ),
          _dailyMediaRoute,
        ],
      ),
      GoRoute(
        path: HomePageTab.news.path,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: HomePage(
              tab: HomePageTab.news,
            ),
          );
        },
      ),
      GoRoute(
        path: HomePageTab.settings.path,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: HomePage(
              tab: HomePageTab.settings,
            ),
          );
        },
        routes: [
          GoRoute(
            path: 'github-info',
            builder: (context, state) {
              return const GithubInfoPage();
            },
          ),
        ],
      ),
    ],
  );

  static GoRoute get _dailyMediaRoute {
    return GoRoute(
      path: ':date',
      builder: (context, state) {
        final date = _parseMediaDate(state.pathParameters['date']);

        return DailyMediaPage(date: date);
      },
    );
  }

  static Date _parseMediaDate(String? date) {
    if (date == null) {
      throw ArgumentError('The date param must be not null');
    }

    final dateInInt = int.parse(date);

    return Date.fromInt(dateInInt);
  }
}
