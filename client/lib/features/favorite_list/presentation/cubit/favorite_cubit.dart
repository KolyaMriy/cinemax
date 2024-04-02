import 'package:bloc/bloc.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/favorite_list/domain/entity/favorite_movie_entity.dart';
import 'package:client/features/favorite_list/domain/repositories/favorite_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final FavoriteRepositoryImpl _repository;
  FavoriteCubit({required FavoriteRepositoryImpl repository})
      : _repository = repository,
        super(FavoriteState());

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
          (movies) => emit(
            state.copyWith(
              movies: movies,
              isLoading: false,
            ),
          ),
        );
  }

  Future<void> clear() async {
    await _repository.clear();
    loadFavoriteMovie();
  }

  Future<void> removeMovie({required int idMovie}) async {
    await _repository.removeMovie(idMovie: idMovie);
    loadFavoriteMovie();
  }

  void toggleEditList() {
    emit(state.copyWith(isEditList: !state.isEditList));
  }
}
