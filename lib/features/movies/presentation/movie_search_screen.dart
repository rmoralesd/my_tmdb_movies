import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_tmdb_movie/features/movies/domain/tmdb_movie.dart';

class MoviesSearchScreen extends StatelessWidget {
  const MoviesSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = [
      TMDBMovie.fromJson({
        "adult": false,
        "backdrop_path": "/olPXihyFeeNvnaD6IOBltgIV1FU.jpg",
        "genre_ids": [27, 9648, 53],
        "id": 882598,
        "original_language": "en",
        "original_title": "Smile",
        "overview":
            "After witnessing a bizarre, traumatic incident involving a patient, Dr. Rose Cotter starts experiencing frightening occurrences that she can't explain. As an overwhelming terror begins taking over her life, Rose must confront her troubling past in order to survive and escape her horrifying new reality.",
        "popularity": 4111.786,
        "poster_path": "/aPqcQwu4VGEewPhagWNncDbJ9Xp.jpg",
        "release_date": "2022-09-23",
        "title": "Smile",
        "video": false,
        "vote_average": 6.9,
        "vote_count": 779
      }),
      TMDBMovie.fromJson({
        "adult": false,
        "backdrop_path": "/olPXihyFeeNvnaD6IOBltgIV1FU.jpg",
        "genre_ids": [27, 9648, 53],
        "id": 882598,
        "original_language": "en",
        "original_title": "Smile",
        "overview":
            "After witnessing a bizarre, traumatic incident involving a patient, Dr. Rose Cotter starts experiencing frightening occurrences that she can't explain. As an overwhelming terror begins taking over her life, Rose must confront her troubling past in order to survive and escape her horrifying new reality.",
        "popularity": 4111.786,
        "poster_path": "/aPqcQwu4VGEewPhagWNncDbJ9Xp.jpg",
        "release_date": "2022-09-23",
        "title": "Smile",
        "video": false,
        "vote_average": 6.9,
        "vote_count": 779
      })
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'TMDB Movies',
          ),
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: movies.length,
            (context, index) {
              final movie = movies[index];
              return Row(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        'http://image.tmdb.org/t/p/w92/${movie.posterPath!}',
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
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
              );
            },
          ),
        ));
  }
}
