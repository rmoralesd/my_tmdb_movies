import 'package:flutter/material.dart';

import '../domain/tmdb_movie.dart';
import 'movie_poster.dart';

class MovieListTile extends StatelessWidget {
  const MovieListTile({
    Key? key,
    required this.movie,
    this.onPressed,
  }) : super(key: key);

  final TMDBMovie movie;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          GestureDetector(
              onTap: onPressed,
              child: MoviePoster(
                imagePath: movie.posterPath,
                posterSize: PosterSize.w154,
              )),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title!,
                  style: Theme.of(context).textTheme.headline6,
                ),
                if (movie.releaseDate != null) ...[
                  const SizedBox(
                    height: 8,
                  ),
                  Text('Released: ${movie.releaseDate}'),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
