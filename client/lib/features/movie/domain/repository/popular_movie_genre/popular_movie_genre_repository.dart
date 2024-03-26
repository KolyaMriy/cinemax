import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/domain/entity/list_movie.dart';
import 'package:dartz/dartz.dart';

abstract interface class PopularMovieGenreRepository {
  Future<Either<Failure, ListMovieEntity>> getPopularMoviesGenre({
    required int indexGenre,
  });
  Either<Failure, ListMovieEntity> getSavedNewMovie({
    required int indexGenre,
  });
  Future<Either<Failure, void>> saveNewMovie(
      {required ListMovieEntity movies, required int indexGenre});
  Future<Either<Failure, void>> clearListMovie();
}
