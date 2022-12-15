import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/mockito.dart';
import 'package:my_tmdb_movie/features/movies/data/movies_repository.dart';

import 'payloads.dart';

class Listener extends Mock {
  void call(MoviesRepository? previous, MoviesRepository value);
}

// class Listener2 extends Mock {
//   void call(
//       AsyncValue<List<TMDBMovie>>? previous, AsyncValue<List<TMDBMovie>> value);
// }

void main() async {
  const baseUrl = 'https://api.themoviedb.org/3';
  const apiKey = '1234key';

  final Dio dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);
  MoviesRepository moviesRepository;

  ProviderContainer makeProviderContainer(MoviesRepository moviesRespository) {
    final container = ProviderContainer(overrides: [
      moviesRepositoryProvider.overrideWithValue(moviesRespository)
    ]);
    addTearDown(container.dispose);
    return container;
  }

  // ProviderContainer makeProviderContainerForFetchMoviesProvider(
  //     Future<List<TMDBMovie>> fetchMoviesProvider) {
  //   final container = ProviderContainer(overrides: []);
  //   addTearDown(container.dispose);
  //   return container;
  // }

  setUp(() {});

  group('searchMovies endpoint', () {
    const String query = 'Batman';

    test(
      "Movies repository should return non empty list when calling searchMovies with query='Batman'",
      () async {
        dioAdapter.onGet(
            '$baseUrl/movie/now_playing?api_key=$apiKey&page=1&query=$query',
            (server) => server.reply(200, responsePayLoad));

        moviesRepository = MoviesRepository(client: dio, apiKey: '1234key');
        final response =
            await moviesRepository.searchMovies(page: 1, query: 'Batman');
        expect(response.isNotEmpty, true);
      },
    );
  });
  group('nowPlayingMovies endpoint', () {
    // test('test name', () async {
    //   final listener = Listener2();

    //   dioAdapter.onGet('$baseUrl/movie/now_playing?api_key=$apiKey&page=1',
    //       (server) => server.reply(200, responsePayLoad));

    //   moviesRepository = MoviesRepository(client: dio, apiKey: '1234key');
    //   FetchMoviesProvider myref = FetchMoviesProvider(page: 1, query: '');
    //   final List<TMDBMovie> listMovies = [];
    //   final container =
    //       makeProviderContainerForFetchMoviesProvider(Future.value(listMovies));

    //   container.listen(
    //     myref,
    //     listener,
    //     fireImmediately: true,
    //   );

    // });
    test(
        'moviesRepositoryProvider should fetch non empty list of movies when calling nowPlayingMovies',
        () async {
      final listener = Listener();

      dioAdapter.onGet('$baseUrl/movie/now_playing?api_key=$apiKey&page=1',
          (server) => server.reply(200, responsePayLoad));

      moviesRepository = MoviesRepository(client: dio, apiKey: '1234key');
      final container = makeProviderContainer(moviesRepository);

      container.listen(
        moviesRepositoryProvider,
        listener,
        fireImmediately: true,
      );

      final result = await container
          .read(moviesRepositoryProvider)
          .nowPlayingMovies(page: 1);

      verify(listener(null, moviesRepository)).called(1);
      verifyNoMoreInteractions(listener);
      expect(result.length, 2);
    });
    test(
      'Movies repository should return non empty list when calling nowPlayingMovies',
      () async {
        dioAdapter.onGet('$baseUrl/movie/now_playing?api_key=$apiKey&page=1',
            (server) => server.reply(200, responsePayLoad));

        moviesRepository = MoviesRepository(client: dio, apiKey: '1234key');
        final response = await moviesRepository.nowPlayingMovies(page: 1);
        expect(response.isNotEmpty, true);
      },
    );
  });
}
