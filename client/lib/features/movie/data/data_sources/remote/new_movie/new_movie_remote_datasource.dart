import 'package:client/features/movie/data/entity/list_movie.dart';

abstract interface class NewMovieRemoteDataSource {
  Future<ListMovieEntity> getNewMovieList();
}
