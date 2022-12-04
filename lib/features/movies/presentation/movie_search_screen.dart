import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_tmdb_movie/features/movies/data/movies_repository.dart';

import 'movie_list_tile.dart';

class MoviesSearchScreen extends ConsumerWidget {
  const MoviesSearchScreen({super.key});

  static const pageSize = 20;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'TMDB Movies',
          ),
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              final page = index ~/ pageSize + 1;
              print('index=$index, page=$page');
              final movieList = ref.watch(fetchMoviesProvider(page: page));
              return movieList.when(
                data: (movies) {
                  final indexInPage = index % 20;
                  final movie = movies[indexInPage];
                  return MovieListTile(movie: movie);
                },
                error: (error, stackTrace) => Text('Error $error'),
                loading: () => const CircularProgressIndicator(),
              );
            },
          ),
        ));
  }
}
