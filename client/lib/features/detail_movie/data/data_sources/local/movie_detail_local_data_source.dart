import 'package:client/features/detail_movie/data/entity/movie_detail_entity.dart';

abstract interface class DetailMovieLocalDataSource {
  Future<void> saveMovieDetail({
    required MovieDetailEntity movie,
    required int idMovie,
  });

  MovieDetailEntity getSavedMovieDetail({
    required int idMovie,
  });

  Future<void> deleteMovieDetail({
    required int idMovie,
  });
}
