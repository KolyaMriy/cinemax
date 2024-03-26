import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/domain/entity/list_movie.dart';
import 'package:dartz/dartz.dart';

abstract interface class MovieRecommendationRepository {
  Future<Either<Failure, ListMovieEntity>> getMovieRecommendation({
    required int index,
  });

  Either<Failure, ListMovieEntity> getSavedMovieRecommendation({
    required int index,
  });

  Future<Either<Failure, void>> saveMovieRecommendation({
    required ListMovieEntity movieRecommendation,
    required int index,
  });

  Future<Either<Failure, void>> clearListMovie();
}
