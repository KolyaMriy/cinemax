import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie_trailer/domain/entity/youtube_trailer_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class MovieTrailerRepository {
  Future<Either<Failure, YouTubeTrailerEntity>> getMovieTrailer({
    required int id,
  });
}
