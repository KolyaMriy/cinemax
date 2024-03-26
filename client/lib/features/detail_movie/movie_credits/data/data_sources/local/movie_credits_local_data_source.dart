import 'package:client/features/detail_movie/movie_credits/domain/entity/credits_entity.dart';

abstract interface class CreditsMovieLocalDataSource {
  Future<void> saveCredits({
    required CreditsEntity credits,
    required int idMovie,
  });

  CreditsEntity getSavedCredits({
    required int idMovie,
  });

  Future<void> deleteCredits({
    required int idMovie,
  });
}
