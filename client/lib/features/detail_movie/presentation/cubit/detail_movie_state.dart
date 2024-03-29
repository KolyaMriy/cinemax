part of 'detail_movie_cubit.dart';

@freezed
class DetailMovieState with _$DetailMovieState {
  factory DetailMovieState({
    MovieDetailEntity? movieDetail,
    @Default(false) bool loading,
    @Default(false) bool isFavorite,
    Failure? failure,
  }) = _DetailMovieState;
}
