import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:dartz/dartz.dart';

abstract interface class FavoriteRepository {
  Future<Either<Failure, void>> clear();
  Future<Either<Failure, void>> addOrRemoveFavoriteMovie({
    required int idMovie,
    required MovieEntity movie,
  });
  Either<Failure, List<MovieEntity>> loadFavorite();
}
