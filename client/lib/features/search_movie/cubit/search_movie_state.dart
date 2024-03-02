part of 'search_movie_cubit.dart';

@freezed
class SearchMovieState with _$SearchMovieState {
  SearchMovieState._();
  factory SearchMovieState({
    @Default(ListMovieEntity(movies: [], page: 0)) ListMovieEntity movie,
    @Default('') String query,
    @Default(false) bool loading,
    Failure? failure,
  }) = _SearchMovieState;
}
