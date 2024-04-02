part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  factory FavoriteState({
    @Default([]) List<FavoriteMovieEntity> movies,
    @Default(false) bool isEditList,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _FavoriteState;
}
