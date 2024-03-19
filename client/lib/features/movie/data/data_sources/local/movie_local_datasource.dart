import 'package:client/features/movie/data/entity/list_movie.dart';

abstract interface class MovieLocalDataSource {
  void saveMovie({
    required ListMovieEntity listMovie,
  });

  ListMovieEntity getSavedListMovie();

  bool isSavedMovie();

  void clearListMovie();
}
