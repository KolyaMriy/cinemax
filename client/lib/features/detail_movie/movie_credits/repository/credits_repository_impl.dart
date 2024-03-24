import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/movie_credits/data/data_sources/local/movie_credits_local_data_source_impl.dart';
import 'package:client/features/detail_movie/movie_credits/data/data_sources/remote/movie_credits_remote_data_source_impl.dart';
import 'package:client/features/detail_movie/movie_credits/data/entity/credits_entity.dart';
import 'package:client/features/detail_movie/movie_credits/repository/credits_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class CreditsRepositoryImpl implements CreditsRepository {
  final CreditsMovieLocalDataSourceImpl _localDataSource;
  final CreditsMovieRemoteDataSourceImpl _remoteDataSource;

  CreditsRepositoryImpl({
    required CreditsMovieLocalDataSourceImpl localDataSource,
    required CreditsMovieRemoteDataSourceImpl remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, CreditsEntity>> getCredits(
      {required int idMovie}) async {
    try {
      late final CreditsEntity result;
      final saveBackdrops = getSavedCredits(idMovie: idMovie);
      await saveBackdrops.fold(
        (failure) async {
          debugPrint('load remote credits');
          final credits =
              await _remoteDataSource.getMovieCredits(idMovie: idMovie);
          result = credits;
          await saveCredits(idMovie: idMovie, credits: credits);
        },
        (savedCredits) {
          debugPrint('load credits');
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
  Either<Failure, CreditsEntity> getSavedCredits({required int idMovie}) {
    try {
      final credits = _localDataSource.getSavedCredits(idMovie: idMovie);
      return right(credits);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> removeCredits({required int idMovie}) async {
    try {
      final result = await _localDataSource.deleteCredits(idMovie: idMovie);
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> saveCredits({
    required int idMovie,
    required CreditsEntity credits,
  }) async {
    try {
      final result = await _localDataSource.saveCredits(
          credits: credits, idMovie: idMovie);
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
