import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/movie_credits/data/entity/credits_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class CreditsRepository {
  Future<Either<Failure, CreditsEntity>> getCredits({
    required int idMovie,
  });

  Either<Failure, CreditsEntity> getSavedCredits({
    required int idMovie,
  });

  Future<Either<Failure, void>> saveCredits({
    required int idMovie,
    required CreditsEntity credits,
  });

  Future<Either<Failure, void>> removeCredits({
    required int idMovie,
  });
}
