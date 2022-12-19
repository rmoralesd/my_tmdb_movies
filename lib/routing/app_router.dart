import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_tmdb_movie/features/movies/presentation/movie_search_screen.dart';
import 'package:my_tmdb_movie/routing/scaffold_with_bottom_nav_bar.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/movies',
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return ScaffoldWithBottomNavBar(
              child: child,
            );
          },
          routes: [
            GoRoute(
                path: '/movies',
                name: 'movies',
                pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const MoviesSearchScreen(),
                    ),
                routes: [
                  GoRoute(
                      path: ':id',
                      name: 'movie',
                      pageBuilder: ((context, state) {
                        print('key = ${state.pageKey}');
                        return MaterialPage(
                            key: state.pageKey,
                            child: const Text('Details page'));
                      }))
                ])
          ])
    ],
  );
});
