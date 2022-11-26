import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_tmdb_movie/features/movies/domain/tmdb_movie.dart';

part 'tmdb_movies_response.freezed.dart';
part 'tmdb_movies_response.g.dart';

@freezed
class TMDBMoviesResponse with _$TMDBMoviesResponse {
  const factory TMDBMoviesResponse({
    required int page,
    required List<TMDBMovie> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _TMDBMoviesResponse;

  factory TMDBMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$TMDBMoviesResponseFromJson(json);
}
