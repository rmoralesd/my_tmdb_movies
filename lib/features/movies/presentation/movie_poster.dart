import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum PosterSize {
  w92,
  w154,
  w185,
  original,
}

Map<PosterSize, Map<String, double>> posterSizes = {
  PosterSize.w92: {
    "width": 92,
    "height": 138,
  },
  PosterSize.w154: {
    "width": 154,
    "height": 231,
  }
};

class MoviePoster extends StatelessWidget {
  final PosterSize posterSize;
  const MoviePoster({
    Key? key,
    this.imagePath,
    required this.posterSize,
  }) : super(key: key);

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    if (imagePath != null) {
      return CachedNetworkImage(
        imageUrl: 'http://image.tmdb.org/t/p/${posterSize.name}/$imagePath',
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    }

    return Placeholder(
      fallbackWidth: posterSizes[posterSize]!["width"]!,
      fallbackHeight: posterSizes[posterSize]!["height"]!,
      color: Colors.black87,
    );
  }
}
