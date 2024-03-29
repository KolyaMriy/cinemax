import 'package:bloc/bloc.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/favorite_movie/domain/repositories/favorite_repository_impl.dart';
import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final FavoriteRepositoryImpl _repository;
  FavoriteCubit({required FavoriteRepositoryImpl repository})
      : _repository = repository,
        super(FavoriteState(
          listFavoriteMovie: [],
        ));

  void loadFavoriteMovie() {
    if (!state.isLoading) {
      emit(state.copyWith(isLoading: true));
    }
    _repository.loadFavorite().fold(
          (failure) => emit(
            state.copyWith(
              failure: failure,
              isLoading: false,
            ),
          ),
          (listFavoriteMovie) => emit(
            state.copyWith(
              listFavoriteMovie: listFavoriteMovie,
              isLoading: false,
            ),
          ),
        );
  }

  Future<void> addOrRemoveFavorite({
    required int idMovie,
    required MovieEntity movie,
  }) async {
    await _repository.addOrRemoveFavoriteMovie(idMovie: idMovie, movie: movie);
  }
}
