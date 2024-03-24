import 'package:bloc/bloc.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/entity/backdrops_movie_entity.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/repository/movie_backdrops_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_backdrops_cubit.freezed.dart';
part 'movie_backdrops_state.dart';

class MovieBackdropsCubit extends Cubit<MovieBackdropsState> {
  final BackdropsMovieRepositoryImpl _repository;

  MovieBackdropsCubit({
    required BackdropsMovieRepositoryImpl repository,
  })  : _repository = repository,
        super(
          MovieBackdropsState(backdrops: []),
        );

  Future<void> loadBackdropsMovie({required int idMovie}) async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final listPopularMovieGenre =
        await _repository.getBackdropsMovie(idMovie: idMovie);
    listPopularMovieGenre.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
      (backdrops) => emit(
        state.copyWith(
          loading: false,
          backdrops: backdrops,
          failure: null,
        ),
      ),
    );
  }
}
