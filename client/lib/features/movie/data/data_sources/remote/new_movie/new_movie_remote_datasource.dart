import 'package:client/features/movie/domain/entity/list_movie.dart';

abstract interface class NewMovieRemoteDataSource {
  Future<ListMovieEntity> getNewMovieList();
}
