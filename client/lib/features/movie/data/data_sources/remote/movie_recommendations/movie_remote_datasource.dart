import 'package:client/features/movie/data/entity/list_movie.dart';

abstract interface class MovieRecommendationRemoteDataSource {
  Future<ListMovieEntity> getMovieRecommendation({
    required int idMovie,
  });
}
