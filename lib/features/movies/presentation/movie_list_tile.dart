import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../domain/tmdb_movie.dart';

class MovieListTile extends StatelessWidget {
  const MovieListTile({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final TMDBMovie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: 'http://image.tmdb.org/t/p/w92/${movie.posterPath!}',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
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
        ],
      ),
    );
  }
}
