part of 'search_movie_cubit.dart';

@freezed
class SearchMovieState with _$SearchMovieState {
  const SearchMovieState._();
  factory SearchMovieState({
    @Default(ListMovieEntity(movies: [], page: 0))
    ListMovieEntity listSearchMovies,
    @Default('') String query,
    @Default(false) bool loading,
    Failure? failure,
  }) = _SearchMovieState;
}
