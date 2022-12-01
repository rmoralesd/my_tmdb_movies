import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_tmdb_movie/features/movies/domain/tmdb_movie.dart';
import 'package:my_tmdb_movie/features/movies/domain/tmdb_movies_response.dart';

class MoviesRepository {
  final Dio client;
  final String apiKey;

  MoviesRepository({
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
    final movies = TMDBMoviesResponse.fromJson(jsonDecode(jsonResponse.data));

    return movies.results;
  }
}

//@riverpod
//MoviesRepository moviesRepository(MoviesRepositoryRef ref)=> Movies