import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_tmdb_movie/features/movies/domain/tmdb_movie.dart';

class MoviewRepository {
  final Dio client;
  final String apiKey;

  MoviewRepository({
    required this.client,
    required this.apiKey,
  });

  Future<List<TMDBMovie>> nowPlayingMovies() async {
    final url = Uri(
      scheme: 'https',
      host: 'api.themoviedb.org',
      path: '3/movie/now_playing',
      queryParameters: {'api_key': apiKey},
    ).toString();
    final jsonResponse = await client.get(url);
    final response = jsonDecode(jsonResponse.data);
    final List<TMDBMovie> movies = [];
    for (var result in response["results"]) {
      movies.add(TMDBMovie.fromJson(result));
    }

    return movies;
  }
}
