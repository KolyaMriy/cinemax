import 'package:client/core/failure/failure.dart';
import 'package:client/core/network/connection_checker.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/popular_movie_genre/popular_movie_genre_remote_data_source_impl.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/repository/popular_movie_genre/popular_movie_genre_repository.dart';
import 'package:dartz/dartz.dart';

class PopularMovieGenreRepositoryImpl implements PopularMovieGenreRepository {
  final PopularMovieGenreRemoteDataSourceImpl _remoteDataSource;
  final MovieLocalDataSourceImpl _localDataSource;
  final ConnectionChecker _connectionChecker;

  PopularMovieGenreRepositoryImpl({
    required PopularMovieGenreRemoteDataSourceImpl remoteDataSource,
    required MovieLocalDataSourceImpl localDataSource,
    required ConnectionCheckerImpl connectionChecker,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        _connectionChecker = connectionChecker;

  @override
  Future<Either<Failure, void>> clearListMovie() async {
    try {
      final result = await _localDataSource.clearListMovie();
      return right(result);
    } catch (e) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, ListMovieEntity>> getPopularMoviesGenre({
    required int indexGenre,
  }) async {
    try {
      if (!(await _connectionChecker.isConnected)) {
        final popularMovieGenres =
            _localDataSource.getSavedListMovie(index: indexGenre);
        if (popularMovieGenres != null) {
          return right(popularMovieGenres);
        } else {
          return left(const Failure.noInternetConnection());
        }
      } else {
        final popularMovieGenres =
            await _remoteDataSource.getPopularMovieGenre(genreId: indexGenre);
        await _localDataSource.saveMovie(
            index: indexGenre, listMovie: popularMovieGenres);
        return right(popularMovieGenres);
      }
    } catch (e) {
      return left(const Failure.serverError());
    }
  }

  @override
  Either<Failure, ListMovieEntity> getSavedNewMovie({required int indexGenre}) {
    try {
      final popularMovieGenres =
          _localDataSource.getSavedListMovie(index: indexGenre);
      if (popularMovieGenres != null) {
        return right(popularMovieGenres);
      } else {
        return left(const Failure.noInternetConnection());
      }
    } catch (e) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> saveNewMovie({
    required ListMovieEntity movies,
    required int indexGenre,
  }) async {
    try {
      final result = await _localDataSource.saveMovie(
          listMovie: movies, index: indexGenre);
      return right(result);
    } catch (e) {
      return left(const Failure.serverError());
    }
  }
}
