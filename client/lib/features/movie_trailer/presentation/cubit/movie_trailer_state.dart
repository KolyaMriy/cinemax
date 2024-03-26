part of 'movie_trailer_cubit.dart';

@freezed
class MovieTrailerState with _$MovieTrailerState {
  MovieTrailerState._();

  factory MovieTrailerState({
    required YouTubeTrailerEntity movieTrailer,
    @Default(false) bool loading,
    @Default(false) bool startPlayer,
    Failure? failure,
  }) = _MovieTrailerState;
}
