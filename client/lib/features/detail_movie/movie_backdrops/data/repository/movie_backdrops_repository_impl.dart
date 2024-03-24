import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/data_sources/local/backdrops_local_data_source_impl.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/data_sources/remote/backdrops_remote_data_source_impl.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/entity/backdrops_movie_entity.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/repository/movie_backdrops_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class BackdropsMovieRepositoryImpl implements BackdropsMovieRepository {
  final BackDropsLocalDataSourceImpl _localDataSource;
  final BackdropsRemoteDataSourceImpl _remoteDataSource;

  BackdropsMovieRepositoryImpl({
    required BackDropsLocalDataSourceImpl localDataSource,
    required BackdropsRemoteDataSourceImpl remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, List<BackdropMoviesEntity>>> getBackdropsMovie({
    required int idMovie,
  }) async {
    try {
      late final List<BackdropMoviesEntity> result;
      final saveBackdrops = getSavedBackdropsMovie(idMovie: idMovie);
      await saveBackdrops.fold(
        (failure) async {
          debugPrint('load remote backdrops');
          final backdrops =
              await _remoteDataSource.getBackDropsMovie(idMovie: idMovie);
          result = backdrops;
          await saveBackdropsMovie(idMovie: idMovie, backdrops: backdrops);
        },
        (savedBackdrops) {
          debugPrint('load savedBackdrops');
          result = savedBackdrops;
        },
      );
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.parseError());
    }
  }

  @override
  Either<Failure, List<BackdropMoviesEntity>> getSavedBackdropsMovie({
    required int idMovie,
  }) {
    try {
      final savedBackdrops =
          _localDataSource.getBackDropsMovie(idMovie: idMovie);
      return right(savedBackdrops);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.parseError());
    }
  }

  @override
  Future<Either<Failure, void>> removeBackdropsMovie(
      {required int idMovie}) async {
    try {
      final result =
          await _localDataSource.removeBackDropsMovie(idMovie: idMovie);
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> saveBackdropsMovie({
    required int idMovie,
    required List<BackdropMoviesEntity> backdrops,
  }) async {
    try {
      final result = await _localDataSource.saveBackDropsMovie(
          idMovie: idMovie, backdrops: backdrops);
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
