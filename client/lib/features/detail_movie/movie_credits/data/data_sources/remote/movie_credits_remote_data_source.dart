import 'package:client/features/detail_movie/movie_credits/data/entity/credits_entity.dart';

abstract interface class CreditsMovieRemoteDataSource {
  Future<CreditsEntity> getMovieCredits({
    required int idMovie,
  });
}
