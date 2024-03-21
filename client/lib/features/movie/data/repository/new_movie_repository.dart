import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:dartz/dartz.dart';

abstract interface class NewMovieRepository {
  Future<Either<Failure, ListMovieEntity>> getNewMovie();

  Either<Failure, ListMovieEntity> getSavedNewMovie();

  Future<Either<Failure, void>> saveNewMovie({
    required ListMovieEntity movies,
  });

  Future<Either<Failure, void>> clearListMovie();
}
