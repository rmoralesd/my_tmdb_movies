import 'package:flutter/material.dart';
import 'package:my_tmdb_movie/features/movies/domain/tmdb_movie.dart';
import 'package:my_tmdb_movie/features/movies/presentation/movie_list_tile.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.movie});

  final TMDBMovie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title!),
      ),
      body: Column(
        children: [
          MovieListTile(movie: movie),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Vote count: ${movie.voteCount}'),
              Text('Vote average: ${movie.voteAverage}'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(movie.overview == null ? "" : movie.overview!),
          )
        ],
      ),
    );
  }
}
