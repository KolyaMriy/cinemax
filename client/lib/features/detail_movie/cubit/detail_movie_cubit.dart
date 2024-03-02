import 'package:client/core/error/failure.dart';
import 'package:client/features/detail_movie/data/entity/movie_detail/movie_detail_entity.dart';
import 'package:client/features/detail_movie/data/repositories/detail_movie_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_movie_state.dart';
part 'detail_movie_cubit.freezed.dart';

class DetailMovieCubit extends Cubit<DetailMovieState> {
  final DetailMovieRepository _repository;
  DetailMovieCubit({required DetailMovieRepository repository})
      : _repository = repository,
        super(DetailMovieState(movieDetail: MovieDetailEntity.empty()));

  Future<void> loadDetailMovie({required int idMovie}) async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final listNewMovie = await _repository.getMovieDetail(id: idMovie);
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

  void showTrailer() {
    emit(state.copyWith(showTrailer: true));
  }
}
