import 'package:client/features/movie/domain/entity/list_movie.dart';

abstract interface class MovieLocalDataSource {
  void saveMovie({
    required ListMovieEntity listMovie,
    required int index,
  });
  ListMovieEntity? getSavedListMovie({
    required int index,
  });
  void clearListMovie();
}
