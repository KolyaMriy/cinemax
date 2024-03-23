import 'package:client/core/failure/failure.dart';
import 'package:client/core/network/connection_checker.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/new_movie/new_movie_remote_datasource_impl.dart';

import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/repository/new_movie/new_movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class NewMovieRepositoryImpl implements NewMovieRepository {
  final MovieLocalDataSourceImpl _localDataSource;
  final NewMovieRemoteDataSourceImpl _newMovieRemoteDataSource;
  final ConnectionChecker _connectionChecker;

  NewMovieRepositoryImpl({
    required MovieLocalDataSourceImpl localDataSource,
    required NewMovieRemoteDataSourceImpl newMovieRemoteDataSource,
    required ConnectionChecker connectionChecker,
  })  : _localDataSource = localDataSource,
        _newMovieRemoteDataSource = newMovieRemoteDataSource,
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
  Future<Either<Failure, ListMovieEntity>> getNewMovie() async {
    try {
      if (!(await _connectionChecker.isConnected)) {
        final newSavedMovies = _localDataSource.getSavedListMovie(index: 1);
        if (newSavedMovies != null) {
          return right(newSavedMovies);
        } else {
          return left(const Failure.noInternetConnection());
        }
      } else {
        final newMovies = await _newMovieRemoteDataSource.getNewMovieList();
        await _localDataSource.saveMovie(listMovie: newMovies, index: 1);
        return right(newMovies);
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  @override
  Either<Failure, ListMovieEntity> getSavedNewMovie() {
    try {
      final savedNewMovies = _localDataSource.getSavedListMovie(index: 1);
      if (savedNewMovies != null) {
        return right(savedNewMovies);
      } else {
        return left(const Failure.serverError());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> saveNewMovie({
    required ListMovieEntity movies,
  }) async {
    try {
      final result =
          await _localDataSource.saveMovie(listMovie: movies, index: 1);
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
