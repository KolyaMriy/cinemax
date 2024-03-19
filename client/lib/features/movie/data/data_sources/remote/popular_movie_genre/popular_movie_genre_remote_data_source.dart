import 'package:client/core/failure/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:dartz/dartz.dart';

abstract class PopularMovieGenreRemoteDataSource {
  Future<Either<Failure, ListMovieEntity>> getPopularMovieGenre({
    required GenreEntity genre,
  });
}
