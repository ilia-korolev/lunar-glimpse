import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:go_router/go_router.dart';

class Routing {
  static final appRouter = GoRouter(
    initialLocation: HomePageTab.gallery.path,
    routes: [
      GoRoute(
        path: HomePageTab.gallery.path,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: HomePage(
              tab: HomePageTab.gallery,
            ),
          );
        },
        routes: [
          GoRoute(
            path: 'favorites',
            builder: (context, state) {
              return const GalleryFavoritesPage();
            },
            routes: [
              _galleryItemRoute,
            ],
          ),
          _galleryItemRoute,
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
          GoRoute(
            path: 'language',
            builder: (context, state) {
              return const LanguagePage();
            },
          ),
        ],
      ),
    ],
  );

  static GoRoute get _galleryItemRoute {
    return GoRoute(
      path: ':date',
      builder: (context, state) {
        final date = _parseDate(state.pathParameters['date']);

        return GalleryItemPage(date: date);
      },
    );
  }

  static Date _parseDate(String? date) {
    if (date == null) {
      throw ArgumentError('The date param must be not null');
    }

    final dateInInt = int.parse(date);

    return Date.fromInt(dateInInt);
  }
}
