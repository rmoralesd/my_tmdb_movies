import 'package:flutter/material.dart';
import 'package:my_tmdb_movie/features/movies/presentation/movie_poster.dart';
import 'package:shimmer/shimmer.dart';

class MovieListTileShimmer extends StatelessWidget {
  final PosterSize posterSize;
  const MovieListTileShimmer({super.key, required this.posterSize});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.black26,
        highlightColor: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Row(
            children: [
              Container(
                width: posterSizes[posterSize]!["width"]!,
                height: posterSizes[posterSize]!["height"]!,
                color: Colors.black,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 20.0,
                      color: Colors.black,
                      margin: const EdgeInsets.only(bottom: 8.0),
                    ),
                    Container(
                      width: 100.0,
                      height: 15.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
