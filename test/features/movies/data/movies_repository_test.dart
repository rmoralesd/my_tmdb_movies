import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:my_tmdb_movie/features/movies/data/movies_repository.dart';

void main() async {
  const baseUrl = 'https://api.themoviedb.org/3';
  const apiKey = '1234key';

  final Dio dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);
  MoviesRepository moviewRepository;

  setUp(() {});

  test(
      'Movies repository should return non empty list when calling nowPlayingMovies',
      () async {
    final responsePayLoad = jsonEncode({
      "dates": {"maximum": "2022-11-20", "minimum": "2022-10-03"},
      "page": 1,
      "results": [
        {
          "adult": false,
          "backdrop_path": "/bQXAqRx2Fgc46uCVWgoPz5L5Dtr.jpg",
          "genre_ids": [28, 14, 878],
          "id": 436270,
          "original_language": "en",
          "original_title": "Black Adam",
          "overview":
              "Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods—and imprisoned just as quickly—Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.",
          "popularity": 23828.993,
          "poster_path": "/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg",
          "release_date": "2022-10-19",
          "title": "Black Adam",
          "video": false,
          "vote_average": 6.8,
          "vote_count": 1270
        },
        {
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
        }
      ],
      "total_pages": 100,
      "total_results": 1996
    });

    dioAdapter.onGet('$baseUrl/movie/now_playing?api_key=$apiKey',
        (server) => server.reply(200, responsePayLoad));

    moviewRepository = MoviesRepository(client: dio, apiKey: '1234key');
    final response = await moviewRepository.nowPlayingMovies();
    expect(response.isNotEmpty, true);
    // final response =
    //     await dio.get('$baseUrl/movie/now_playing?api_key=$apiKey');
  });
}
