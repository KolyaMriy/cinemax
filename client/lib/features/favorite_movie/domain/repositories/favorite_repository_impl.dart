import 'package:client/core/failure/failure.dart';
import 'package:client/features/favorite_movie/domain/repositories/favorite_repository.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final Box<MovieDTO> _box;

  FavoriteRepositoryImpl({
    required Box<MovieDTO> box,
  }) : _box = box;

  @override
  Future<Either<Failure, void>> addOrRemoveFavoriteMovie({
    required int idMovie,
    required MovieEntity movie,
  }) async {
    try {
      final result = await _box.put(idMovie, movie.toDTO());
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.parseError());
    }
  }

  @override
  Future<Either<Failure, void>> clear() async {
    try {
      final result = await _box.clear();
      return right(result);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.parseError());
    }
  }

  @override
  Either<Failure, List<MovieEntity>> loadFavorite() {
    try {
      final movies = _box.values;
      if (movies is List<MovieDTO>) {
        final result = movies.map((e) => e.toEntity()).toList();
        return right(result);
      } else {
        return left(Failure.parseError());
      }
    } catch (e) {
      return left(Failure.parseError());
    }
  }
}
