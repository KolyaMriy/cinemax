part of 'new_movie_list_cubit.dart';

@freezed
class NewMovieListState with _$NewMovieListState {
  const factory NewMovieListState({
    required ListMovieEntity listNewMovie,
    @Default(false) bool loading,
    Failure? failure,
  }) = _NewMovieListState;
}
