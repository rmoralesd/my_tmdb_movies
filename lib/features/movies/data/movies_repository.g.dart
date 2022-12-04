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
String $fetchMoviesHash() => r'a5df9a3f3b46979ff34e71d955e68dc231e9fd75';

/// See also [fetchMovies].
class FetchMoviesProvider extends AutoDisposeFutureProvider<List<TMDBMovie>> {
  FetchMoviesProvider({
    required this.page,
  }) : super(
          (ref) => fetchMovies(
            ref,
            page: page,
          ),
          from: fetchMoviesProvider,
          name: r'fetchMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $fetchMoviesHash,
        );

  final dynamic page;

  @override
  bool operator ==(Object other) {
    return other is FetchMoviesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef FetchMoviesRef = AutoDisposeFutureProviderRef<List<TMDBMovie>>;

/// See also [fetchMovies].
final fetchMoviesProvider = FetchMoviesFamily();

class FetchMoviesFamily extends Family<AsyncValue<List<TMDBMovie>>> {
  FetchMoviesFamily();

  FetchMoviesProvider call({
    required dynamic page,
  }) {
    return FetchMoviesProvider(
      page: page,
    );
  }

  @override
  AutoDisposeFutureProvider<List<TMDBMovie>> getProviderOverride(
    covariant FetchMoviesProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchMoviesProvider';
}
