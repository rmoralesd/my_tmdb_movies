import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_tmdb_movie/env/env.dart';
import 'package:my_tmdb_movie/features/movies/domain/tmdb_movie.dart';
import 'package:my_tmdb_movie/features/movies/domain/tmdb_movies_response.dart';
import 'package:my_tmdb_movie/utils/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movies_repository.g.dart';

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
    final movies = TMDBMoviesResponse.fromJson(jsonResponse.data);

    return movies.results;
  }
}

@riverpod
MoviesRepository moviesRepository(MoviesRepositoryRef ref) =>
    MoviesRepository(client: ref.watch(dioProvider), apiKey: Env.tmdbKey);

@riverpod
Future<List<TMDBMovie>> fetchMovies(FetchMoviesRef ref) async {
  final moviesRepo = ref.watch(moviesRepositoryProvider);
  return moviesRepo.nowPlayingMovies();
}
