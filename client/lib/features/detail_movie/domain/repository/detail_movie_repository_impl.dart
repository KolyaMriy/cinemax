import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/data/data_sources/local/movie_detail_local_data_source_impl.dart';
import 'package:client/features/detail_movie/data/data_sources/remote/movie_detail_remote_data_source_impl.dart';
import 'package:client/features/detail_movie/domain/entity/movie_detail_entity.dart';
import 'package:client/features/detail_movie/domain/repository/detail_movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class DetailMovieRepositoryImpl implements DetailMovieRepository {
  final DetailMovieRemoteDataSourceImpl _remoteDataSource;
  final DetailMovieLocalDataSourceImpl _localDataSource;

  DetailMovieRepositoryImpl({
    required DetailMovieRemoteDataSourceImpl remoteDataSource,
    required DetailMovieLocalDataSourceImpl localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<Either<Failure, MovieDetailEntity>> getMovieDetail({
    required int idMovie,
  }) async {
    try {
      late final MovieDetailEntity result;
      final saveBackdrops = getSavedMovieDetail(idMovie: idMovie);
      await saveBackdrops.fold(
        (failure) async {
          debugPrint('load remote detailMovie');
          final movie =
              await _remoteDataSource.getMovieDetail(idMovie: idMovie);
          result = movie;
          await saveMovieDetail(idMovie: idMovie, movie: movie);
        },
        (savedCredits) {
          debugPrint('load local detailMovie');
          result = savedCredits;
        },
      );
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  @override
  Either<Failure, MovieDetailEntity> getSavedMovieDetail({
    required int idMovie,
  }) {
    try {
      final movieDetail =
          _localDataSource.getSavedMovieDetail(idMovie: idMovie);
      return right(movieDetail);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> removeMovieDetail({
    required int idMovie,
  }) async {
    try {
      final result = await _localDataSource.deleteMovieDetail(idMovie: idMovie);
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> saveMovieDetail({
    required int idMovie,
    required MovieDetailEntity movie,
  }) async {
    try {
      final result = await _localDataSource.saveMovieDetail(
          movie: movie, idMovie: idMovie);
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
