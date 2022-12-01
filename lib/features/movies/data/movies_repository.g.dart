// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $moviesRepositoryHash() => r'97b5fdb534b4080ef728071ee9a18f5453df9884';

/// See also [moviesRepository].
final moviesRepositoryProvider = AutoDisposeProvider<MoviesRepository>(
  moviesRepository,
  name: r'moviesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $moviesRepositoryHash,
);
typedef MoviesRepositoryRef = AutoDisposeProviderRef<MoviesRepository>;
String $fetchMoviesHash() => r'6c0a0bacff28df1a92a0afb890d72ce127a2dfc9';

/// See also [fetchMovies].
final fetchMoviesProvider = AutoDisposeFutureProvider<List<TMDBMovie>>(
  fetchMovies,
  name: r'fetchMoviesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $fetchMoviesHash,
);
typedef FetchMoviesRef = AutoDisposeFutureProviderRef<List<TMDBMovie>>;
