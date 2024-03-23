import 'package:client/features/movie/data/entity/list_movie.dart';

abstract class PopularMovieGenreRemoteDataSource {
  Future<ListMovieEntity> getPopularMovieGenre({
    required int genreId,
  });
}
