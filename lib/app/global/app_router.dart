import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:go_router/go_router.dart';

// part 'app_router.g.dart';

class AppRouter extends GoRouter {
  AppRouter()
      : super(
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
                  path: ':date',
                  builder: (context, state) {
                    final date = _parseMediaDate(state.pathParameters['date']);

                    return DailyMediaPage(date: date);
                  },
                ),
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
            ),
          ],
        );

  static Date _parseMediaDate(String? date) {
    if (date == null) {
      throw ArgumentError('The date param must be not null');
    }

    final dateInInt = int.parse(date);

    return Date.fromInt(dateInInt);
  }
}
