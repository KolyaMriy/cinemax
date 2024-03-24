import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/data/entity/movie_detail_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class DetailMovieRepository {
  Future<Either<Failure, MovieDetailEntity>> getMovieDetail({
    required int idMovie,
  });

  Either<Failure, MovieDetailEntity> getSavedMovieDetail({
    required int idMovie,
  });

  Future<Either<Failure, void>> saveMovieDetail(
      {required int idMovie, required MovieDetailEntity movie});

  Future<Either<Failure, void>> removeMovieDetail({
    required int idMovie,
  });
}
