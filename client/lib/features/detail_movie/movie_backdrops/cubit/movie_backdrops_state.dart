part of 'movie_backdrops_cubit.dart';

@freezed
class MovieBackdropsState with _$MovieBackdropsState {
  MovieBackdropsState._();
  factory MovieBackdropsState({
    required List<BackdropMoviesEntity> backdrops,
    @Default(false) bool loading,
    Failure? failure,
  }) = _MovieBackdropsState;
}
