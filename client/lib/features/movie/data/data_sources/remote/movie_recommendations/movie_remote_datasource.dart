import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:dartz/dartz.dart';

abstract interface class MovieRecommendationRemoteDataSource {
  Future<Either<Failure, ListMovieEntity>> getMovieRecommendation({
    required int idMovie,
  });
}
