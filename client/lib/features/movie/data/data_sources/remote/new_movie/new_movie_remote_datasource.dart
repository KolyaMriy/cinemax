import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:dartz/dartz.dart';

abstract interface class NewMovieRemoteDataSource {
  Future<Either<Failure, ListMovieEntity>> getNewMovieList();
}
