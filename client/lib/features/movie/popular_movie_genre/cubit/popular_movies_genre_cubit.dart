import 'package:client/core/failure/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/popular_movie_genre/popular_movie_genre_remote_data_source_impl.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_genre_state.dart';
part 'popular_movies_genre_cubit.freezed.dart';

class PopularMoviesGenreCubit extends Cubit<PopularMoviesGenreState> {
  final PopularMovieGenreRemoteDataSourceImpl _remoteDataSource;
  final MovieLocalDataSourceImpl _localDataSource;
  PopularMoviesGenreCubit({
    required PopularMovieGenreRemoteDataSourceImpl remoteDataSource,
    required MovieLocalDataSourceImpl localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
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
    final isSavedMovie = _localDataSource.isSavedMovie();
    if (isSavedMovie == true) {
      final listPopularMovieGenre = _localDataSource.getSavedListMovie();
      emit(state.copyWith(
        loading: false,
        listPopularGenreMovie: listPopularMovieGenre,
        failure: null,
      ));
    } else {
      final listPopularMovieGenre = await _remoteDataSource
          .getPopularMovieGenre(genre: state.currentGenre);
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

  Future<void> initial() async {
    emit(state.copyWith(loading: true));
    final listPopularMovieGenre =
        await _remoteDataSource.getPopularMovieGenre(genre: state.currentGenre);
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
