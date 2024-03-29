import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/domain/entity/movie_detail_entity.dart';
import 'package:client/features/detail_movie/domain/repository/detail_movie_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_movie_state.dart';
part 'detail_movie_cubit.freezed.dart';

class DetailMovieCubit extends Cubit<DetailMovieState> {
  final DetailMovieRepositoryImpl _repository;

  DetailMovieCubit({
    required DetailMovieRepositoryImpl repository,
  })  : _repository = repository,
        super(DetailMovieState());

  void changeIsFavoriteMovie() {
    emit(state.copyWith(isFavorite: !state.isFavorite));
  }

  Future<void> loadDetailMovie({required int idMovie}) async {
    debugPrint('fd');
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final listNewMovie = await _repository.getMovieDetail(idMovie: idMovie);
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
          movieDetail: success,
          failure: null,
        ),
      ),
    );
  }
}
