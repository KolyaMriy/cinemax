import 'package:client/core/failure/failure.dart';
import 'package:client/features/favorite_movie/data/dtos/favorite_movie_dto.dart';
import 'package:client/features/favorite_movie/data/mappers/favorite_movie_mapper.dart';
import 'package:client/features/favorite_movie/domain/entity/favorite_movie_entity.dart';
import 'package:client/features/favorite_movie/domain/repositories/favorite_repository.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

enum AddOrRemoveFavorite { add, remove }

class FavoriteRepositoryImpl implements FavoriteRepository {
  final Box<FavoriteMovieDTO> _box;

  FavoriteRepositoryImpl({
    required Box<FavoriteMovieDTO> box,
  }) : _box = box;

  @override
  Future<Either<Failure, AddOrRemoveFavorite>> addOrRemoveFavoriteMovie({
    required int idMovie,
    required MovieEntity movie,
  }) async {
    try {
      final favoriteMovie = FavoriteMovieDTO(
        movie: movie.toDTO(),
        createdAt: DateTime.now(),
      );
      final addOrRemove = isFavoriteMovie(idMovie: idMovie);
      if (addOrRemove) {
        await _box.delete(idMovie);
      } else {
        await _box.put(idMovie, favoriteMovie);
      }

      return right(AddOrRemoveFavorite.add);
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
  Either<Failure, List<FavoriteMovieEntity>> loadFavorite() {
    try {
      final movies = _box.values;
      final result = movies.map((e) => e.toEntity()).toList();
      return right(result);
    } catch (e) {
      return left(const Failure.parseError());
    }
  }

  bool isFavoriteMovie({required int idMovie}) {
    final movie = _box.get(idMovie);
    final result = movie != null ? true : false;
    return result;
  }
}
