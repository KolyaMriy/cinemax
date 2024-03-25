import 'package:client/core/failure/failure.dart';
import 'package:client/features/genre_list/data/data_source/local/genre_local_datasource_impl.dart';
import 'package:client/features/genre_list/data/data_source/remote/genre_remote_datasource_impl.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/genre_list/data/repositories/genre_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class GenreRepositoryImpl implements GenreRepository {
  final GenreRemoteDataSourceImpl _remoteDataSource;
  final GenreLocalDataSourceImpl _localDataSource;

  GenreRepositoryImpl({
    required GenreRemoteDataSourceImpl remoteDataSource,
    required GenreLocalDataSourceImpl localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;
  @override
  Future<Either<Failure, void>> clearGenreList() async {
    try {
      return right(await _localDataSource.clearGenres());
    } catch (e) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<GenreEntity>>> getGenreList() async {
    try {
      late final List<GenreEntity> result;
      final savedGenresList = getSavedGenreList();
      await savedGenresList.fold(
        (failure) async {
          debugPrint('load remote Api genres');
          result = await _remoteDataSource.getGenreList();
          await saveGenreList(genres: result);
        },
        (savedGenres) {
          debugPrint('load local genres');
          result = savedGenres;
        },
      );
      return right(result);
    } catch (e) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<GenreEntity>>> getGenreListByIds(
    List<int> idsGenre,
  ) async {
    try {
      late final List<GenreEntity> result;
      final savedGenresListByids = getSavedGenreListByIds(idsGenre);
      await savedGenresListByids.fold(
        (failure) async {
          result = await _remoteDataSource.getGenreListByIds(idsGenre);
        },
        (savedGenres) {
          result = savedGenres;
        },
      );
      return right(result);
    } catch (e) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> saveGenreList({
    required List<GenreEntity> genres,
  }) async {
    try {
      final result = await _localDataSource.saveGenres(genres: genres);
      return right(result);
    } catch (e) {
      return const Left(Failure.serverError());
    }
  }

  @override
  Either<Failure, List<GenreEntity>> getSavedGenreList() {
    try {
      final result = _localDataSource.getSavedListGenres();
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return const Left(Failure.serverError());
    }
  }

  @override
  Either<Failure, List<GenreEntity>> getSavedGenreListByIds(
    List<int> idsGenre,
  ) {
    try {
      final result = _localDataSource.getGenreListByIds(idsGenre);
      return right(result);
    } catch (e) {
      return left(const Failure.serverError());
    }
  }
}
