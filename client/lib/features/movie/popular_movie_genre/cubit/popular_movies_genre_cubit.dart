import 'package:client/core/error/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/popular_movie_genre/repositories/popular_movie_genre_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_genre_state.dart';
part 'popular_movies_genre_cubit.freezed.dart';

class PopularMoviesGenreCubit extends Cubit<PopularMoviesGenreState> {
  final PopularMovieGenreRepository _repository;
  PopularMoviesGenreCubit({required PopularMovieGenreRepository repository})
      : _repository = repository,
        super(
          PopularMoviesGenreState(
            listPopularGenreMovie: ListMovieEntity.empty(),
          ),
        );

  void changeCurrentGenre({required GenreEntity genre}) {
    if (state.currentGenre == genre) return;
    emit(state.copyWith(currentGenre: genre));
    _loadPopularMovieGenre();
  }

  Future<void> _loadPopularMovieGenre() async {
    emit(state.copyWith(loading: true));
    final listPopularMovieGenre =
        await _repository.getPopularMovieGenre(genre: state.currentGenre);
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

  Future<void> initial() async {
    emit(state.copyWith(loading: true));
    final listPopularMovieGenre =
        await _repository.getPopularMovieGenre(genre: state.currentGenre);
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
