part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  factory FavoriteState({
    required List<MovieEntity> listFavoriteMovie,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _FavoriteState;
}
