import 'package:client/core/api/api_config.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/entity/movie.dart';

extension MovieMapper on MovieDTO {
  MovieEntity toDomain() => MovieEntity(
        id: id,
        title: title,
        originalLanguage: originalLanguage.toUpperCase(),
        originalTitle: originalTitle,
        description: description,
        popularity: popularity,
        posterPath: posterPath != '' ? '${MovieQuery.image}$posterPath' : null,
        backdropPath:
            backdropPath != '' ? '${MovieQuery.image}$backdropPath' : null,
        voteAverage: voteAverage,
        releaseDate: DateTime.tryParse(releaseDate),
      );
}
