import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/domain/entity/movie_detail_entity.dart';
import 'package:client/features/detail_movie/domain/repository/detail_movie_repository_impl.dart';
import 'package:client/features/favorite_list/domain/repositories/favorite_repository_impl.dart';
import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_movie_state.dart';
part 'detail_movie_cubit.freezed.dart';

class DetailMovieCubit extends Cubit<DetailMovieState> {
  final DetailMovieRepositoryImpl _repository;
  final FavoriteRepositoryImpl _favoriteRepository;

  DetailMovieCubit({
    required DetailMovieRepositoryImpl repository,
    required FavoriteRepositoryImpl favoriteRepository,
  })  : _repository = repository,
        _favoriteRepository = favoriteRepository,
        super(DetailMovieState());

  Future<void> loadDetailMovie({required int idMovie}) async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final loadDetailMovie = await _repository.getMovieDetail(idMovie: idMovie);
    loadDetailMovie.fold(
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
    _isFavoriteMovie();
  }

  Future<void> addOrRemoveFavorite({
    required int idMovie,
    required MovieEntity movie,
  }) async {
    await _favoriteRepository.addOrRemoveFavoriteMovie(
        idMovie: idMovie, movie: movie);
    _isFavoriteMovie();
  }

  void _isFavoriteMovie() {
    final isFavoriteMovie =
        _favoriteRepository.isFavoriteMovie(idMovie: state.movieDetail!.id);
    emit(state.copyWith(isFavorite: isFavoriteMovie));
  }
}
