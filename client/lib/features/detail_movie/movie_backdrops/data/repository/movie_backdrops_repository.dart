import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/entity/backdrops_movie_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class BackdropsMovieRepository {
  Future<Either<Failure, List<BackdropMoviesEntity>>> getBackdropsMovie({
    required int idMovie,
  });

  Either<Failure, List<BackdropMoviesEntity>> getSavedBackdropsMovie({
    required int idMovie,
  });

  Future<Either<Failure, void>> saveBackdropsMovie({
    required int idMovie,
    required List<BackdropMoviesEntity> backdrops,
  });

  Future<Either<Failure, void>> removeBackdropsMovie({
    required int idMovie,
  });
}
