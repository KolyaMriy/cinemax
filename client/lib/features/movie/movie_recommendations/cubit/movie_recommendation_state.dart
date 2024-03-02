part of 'movie_recommendation_cubit.dart';

@freezed
class MovieRecommendationState with _$MovieRecommendationState {
  MovieRecommendationState._();

  factory MovieRecommendationState({
    required ListMovieEntity movieRecommendations,
    @Default(false) bool loading,
    Failure? failure,
  }) = _MovieRecommendationState;
}
