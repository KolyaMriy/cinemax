import 'package:client/core/failure/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class GenreRepository {
  Future<Either<Failure, List<GenreEntity>>> getGenreList();
  Future<Either<Failure, List<GenreEntity>>> getGenreListByIds(
    List<int> idsGenre,
  );

  Either<Failure, List<GenreEntity>> getSavedGenreList();
  Either<Failure, List<GenreEntity>> getSavedGenreListByIds(
    List<int> idsGenre,
  );
  Future<Either<Failure, void>> saveGenreList({
    required List<GenreEntity> genres,
  });
  Future<Either<Failure, void>> clearGenreList();
}
