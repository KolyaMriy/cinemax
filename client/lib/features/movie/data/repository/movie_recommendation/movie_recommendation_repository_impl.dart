import 'package:client/core/failure/failure.dart';
import 'package:client/core/network/connection_checker.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/movie_recommendations/movie_remote_datasource_impl.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/repository/movie_recommendation/movie_recommendation_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class MovieRecommendationRepositoryImpl
    implements MovieRecommendationRepository {
  final MovieLocalDataSourceImpl _localDataSource;
  final MovieRecommendationRemoteDataSourceImpl _remoteDataSource;
  final ConnectionChecker _connectionChecker;

  MovieRecommendationRepositoryImpl({
    required MovieLocalDataSourceImpl localDataSource,
    required MovieRecommendationRemoteDataSourceImpl remoteDataSource,
    required ConnectionChecker connectionChecker,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _connectionChecker = connectionChecker;

  @override
  Future<Either<Failure, ListMovieEntity>> getMovieRecommendation({
    required int index,
  }) async {
    try {
      if (await _connectionChecker.isConnected) {
        final recommendationMovie =
            await _remoteDataSource.getMovieRecommendation(idMovie: index);
        return right(recommendationMovie);
      } else {
        final savedMovie = _localDataSource.getSavedListMovie(index: index);
        if (savedMovie != null) {
          return right(savedMovie);
        } else {
          return left(const Failure.serverError());
        }
      }
    } catch (e) {
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> saveMovieRecommendation({
    required ListMovieEntity movieRecommendation,
    required int index,
  }) async {
    try {
      final saveMovie = await _localDataSource.saveMovie(
          listMovie: movieRecommendation, index: index);
      return right(saveMovie);
    } catch (e) {
      debugPrint('exception saved Movie $e');
      return left(const Failure.serverError());
    }
  }

  @override
  Either<Failure, ListMovieEntity> getSavedMovieRecommendation({
    required int index,
  }) {
    try {
      final savedMovie = _localDataSource.getSavedListMovie(index: index);
      if (savedMovie != null) {
        return right(savedMovie);
      } else {
        return left(const Failure.serverError());
      }
    } catch (e) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> clearListMovie() async {
    try {
      final result = await _localDataSource.clearListMovie();
      return right(result);
    } catch (e) {
      return left(const Failure.serverError());
    }
  }
}
