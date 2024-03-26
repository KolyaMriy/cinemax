import 'package:client/features/movie/domain/entity/list_movie.dart';

abstract interface class MovieRecommendationRemoteDataSource {
  Future<ListMovieEntity> getMovieRecommendation({
    required int idMovie,
  });
}
