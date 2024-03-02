import 'package:client/core/error/failure.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/new_movie_list/repositories/new_movie_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_movie_list_state.dart';
part 'new_movie_list_cubit.freezed.dart';

class NewMovieListCubit extends Cubit<NewMovieListState> {
  final NewMovieRepository _repository;
  NewMovieListCubit({required NewMovieRepository repository})
      : _repository = repository,
        super(NewMovieListState(
          listNewMovie: ListMovieEntity.empty(),
        ));

  Future<void> loadNewMovieList() async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final listNewMovie = await _repository.getNewMovieList();
    listNewMovie.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
      (succes) => emit(
        state.copyWith(
          loading: false,
          listNewMovie: succes,
          failure: null,
        ),
      ),
    );
  }
}
