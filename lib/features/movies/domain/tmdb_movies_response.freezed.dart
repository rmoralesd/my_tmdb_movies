// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tmdb_movies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TMDBMoviesResponse _$TMDBMoviesResponseFromJson(Map<String, dynamic> json) {
  return _TMDBMoviesResponse.fromJson(json);
}

/// @nodoc
mixin _$TMDBMoviesResponse {
  int get page => throw _privateConstructorUsedError;
  List<TMDBMovie> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TMDBMoviesResponseCopyWith<TMDBMoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TMDBMoviesResponseCopyWith<$Res> {
  factory $TMDBMoviesResponseCopyWith(
          TMDBMoviesResponse value, $Res Function(TMDBMoviesResponse) then) =
      _$TMDBMoviesResponseCopyWithImpl<$Res, TMDBMoviesResponse>;
  @useResult
  $Res call(
      {int page,
      List<TMDBMovie> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$TMDBMoviesResponseCopyWithImpl<$Res, $Val extends TMDBMoviesResponse>
    implements $TMDBMoviesResponseCopyWith<$Res> {
  _$TMDBMoviesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TMDBMovie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TMDBMoviesResponseCopyWith<$Res>
    implements $TMDBMoviesResponseCopyWith<$Res> {
  factory _$$_TMDBMoviesResponseCopyWith(_$_TMDBMoviesResponse value,
          $Res Function(_$_TMDBMoviesResponse) then) =
      __$$_TMDBMoviesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<TMDBMovie> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_TMDBMoviesResponseCopyWithImpl<$Res>
    extends _$TMDBMoviesResponseCopyWithImpl<$Res, _$_TMDBMoviesResponse>
    implements _$$_TMDBMoviesResponseCopyWith<$Res> {
  __$$_TMDBMoviesResponseCopyWithImpl(
      _$_TMDBMoviesResponse _value, $Res Function(_$_TMDBMoviesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_TMDBMoviesResponse(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TMDBMovie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TMDBMoviesResponse implements _TMDBMoviesResponse {
  const _$_TMDBMoviesResponse(
      {required this.page,
      required final List<TMDBMovie> results,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _results = results;

  factory _$_TMDBMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TMDBMoviesResponseFromJson(json);

  @override
  final int page;
  final List<TMDBMovie> _results;
  @override
  List<TMDBMovie> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'TMDBMoviesResponse(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TMDBMoviesResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TMDBMoviesResponseCopyWith<_$_TMDBMoviesResponse> get copyWith =>
      __$$_TMDBMoviesResponseCopyWithImpl<_$_TMDBMoviesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TMDBMoviesResponseToJson(
      this,
    );
  }
}

abstract class _TMDBMoviesResponse implements TMDBMoviesResponse {
  const factory _TMDBMoviesResponse(
          {required final int page,
          required final List<TMDBMovie> results,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$_TMDBMoviesResponse;

  factory _TMDBMoviesResponse.fromJson(Map<String, dynamic> json) =
      _$_TMDBMoviesResponse.fromJson;

  @override
  int get page;
  @override
  List<TMDBMovie> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_TMDBMoviesResponseCopyWith<_$_TMDBMoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
