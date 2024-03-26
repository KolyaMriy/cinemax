import 'package:client/features/detail_movie/domain/entity/movie_detail_entity.dart';

abstract interface class DetailMovieRemoteDataSource {
  Future<MovieDetailEntity> getMovieDetail({
    required int idMovie,
  });
}
