part of 'detail_movie_cubit.dart';

@freezed
class DetailMovieState with _$DetailMovieState {
  factory DetailMovieState({
    required MovieDetailEntity movieDetail,
    @Default(false) bool loading,
    @Default(false) bool showTrailer,
    Failure? failure,
  }) = _DetailMovieState;
}
