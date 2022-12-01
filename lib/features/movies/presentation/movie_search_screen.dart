import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_tmdb_movie/features/movies/data/movies_repository.dart';

import 'movie_list_tile.dart';

class MoviesSearchScreen extends ConsumerWidget {
  const MoviesSearchScreen({super.key});

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
              final movieList = ref.watch(fetchMoviesProvider);
              return movieList.when(
                data: (movies) {
                  final indexInPage = index % 20;
                  final movie = movies[indexInPage];
                  return MovieListTile(movie: movie);
                },
                error: (error, stackTrace) => Text('Error $error'),
                loading: () => CircularProgressIndicator(),
              );
            },
          ),
        ));
  }
}
