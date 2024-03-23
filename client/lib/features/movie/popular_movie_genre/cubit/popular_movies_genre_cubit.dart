import 'package:client/core/failure/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/repository/popular_movie_genre_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_genre_state.dart';
part 'popular_movies_genre_cubit.freezed.dart';

class PopularMoviesGenreCubit extends Cubit<PopularMoviesGenreState> {
  final PopularMovieGenreRepositoryImpl _repository;
  PopularMoviesGenreCubit({
    required PopularMovieGenreRepositoryImpl repository,
  })  : _repository = repository,
        super(
          PopularMoviesGenreState(
            listPopularGenreMovie: ListMovieEntity.empty(),
          ),
        );

  void changeCurrentGenre({required GenreEntity genre}) {
    if (state.currentGenre == genre) return;
    emit(state.copyWith(currentGenre: genre));
    loadPopularMovieGenre();
  }

  Future<void> loadPopularMovieGenre() async {
    emit(state.copyWith(loading: true));
    final listPopularMovieGenre = await _repository.getPopularMoviesGenre(
      indexGenre: state.currentGenre.id,
    );
    listPopularMovieGenre.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
      (success) => emit(
        state.copyWith(
          loading: false,
          listPopularGenreMovie: success,
          failure: null,
        ),
      ),
    );
  }
}
