part of 'movie_credits_cubit.dart';

@freezed
class MovieCreditsState with _$MovieCreditsState {
  MovieCreditsState._();
  factory MovieCreditsState({
    required CreditsEntity credits,
    @Default(false) bool loading,
    Failure? failure,
  }) = _MovieCreditsState;
}
