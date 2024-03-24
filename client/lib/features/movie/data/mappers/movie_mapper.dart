import 'package:client/core/api/api_config.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/entity/movie.dart';

extension MovieToEntity on MovieDTO {
  MovieEntity toEntity({
    List<GenreEntity>? listGenre,
  }) =>
      MovieEntity(
        id: id,
        title: title,
        originalLanguage: originalLanguage.toUpperCase(),
        originalTitle: originalTitle,
        description: description,
        popularity: popularity,
        posterPath: posterPath != '' ? '${MovieQuery.baseImageHttp}$posterPath' : null,
        backdropPath:
            backdropPath != '' ? '${MovieQuery.baseImageHttp}$backdropPath' : null,
        voteAverage: voteAverage,
        releaseDate: DateTime.tryParse(releaseDate),
        genres: listGenre,
      );
}

extension MovieToDTO on MovieEntity {
  MovieDTO toDTO() => MovieDTO(
      id: id,
      title: title,
      originalLanguage:
          originalLanguage != null ? originalLanguage!.toUpperCase() : '',
      originalTitle: originalTitle ?? '',
      description: description ?? '',
      popularity: popularity ?? 0,
      posterPath: posterPath ?? '',
      backdropPath: backdropPath ?? '',
      voteAverage: voteAverage ?? 0,
      releaseDate: '',
      genres: genres != null ? genres!.map((genre) => genre.id).toList() : []);
}
