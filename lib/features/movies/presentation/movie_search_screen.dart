import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_tmdb_movie/features/movies/data/movies_repository.dart';
import 'package:my_tmdb_movie/features/movies/presentation/movie_list_tile_shimmer.dart';
import 'package:my_tmdb_movie/features/movies/presentation/movie_poster.dart';
import 'package:my_tmdb_movie/features/movies/presentation/movie_search_bar.dart';

import 'movie_list_tile.dart';

class MoviesSearchScreen extends ConsumerWidget {
  const MoviesSearchScreen({super.key});

  static const pageSize = 20;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(moviesSearchTextProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'TMDB Movies',
          ),
        ),
        body: Column(
          children: [
            const MoviesSearchBar(),
            Expanded(
              child: ListView.custom(
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final page = index ~/ pageSize + 1;
                    //print('index=$index, page=$page');
                    final movieList = ref
                        .watch(fetchMoviesProvider(page: page, query: query));
                    return movieList.when(
                      data: (movies) {
                        final indexInPage = index % 20;
                        final movie = movies[indexInPage];
                        return MovieListTile(
                          movie: movie,
                          onPressed: () => context.goNamed(
                            'movie',
                            params: {
                              'id': movie.id.toString(),
                            },
                            extra: movie,
                          ),
                        );
                      },
                      error: (error, stackTrace) => Text('Error $error'),
                      loading: () => const MovieListTileShimmer(
                        posterSize: PosterSize.w154,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
