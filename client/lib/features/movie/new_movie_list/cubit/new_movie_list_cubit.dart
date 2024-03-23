import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/repository/new_movie/new_movie_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_movie_list_state.dart';
part 'new_movie_list_cubit.freezed.dart';

class NewMovieListCubit extends Cubit<NewMovieListState> {
  final NewMovieRepositoryImpl _repository;
  NewMovieListCubit({
    required NewMovieRepositoryImpl repository,
  })  : _repository = repository,
        super(
          NewMovieListState(
            listNewMovie: ListMovieEntity.empty(),
          ),
        );

  Future<void> loadNewMovieList() async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final listNewMovie = await _repository.getNewMovie();
    listNewMovie.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
      (success) => emit(
        state.copyWith(
          loading: false,
          listNewMovie: success,
          failure: null,
        ),
      ),
    );
  }
}
