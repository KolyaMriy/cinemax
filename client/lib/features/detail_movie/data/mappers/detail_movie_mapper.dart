import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/data/dtos/movie_detail/movie_detail_dto.dart';
import 'package:client/features/detail_movie/data/mappers/production_company_mapper.dart';
import 'package:client/features/detail_movie/domain/entity/movie_detail_entity.dart';
import 'package:client/features/genre_list/data/mappers/genre_mappers.dart';
import 'package:client/features/movie/domain/entity/movie.dart';

extension MovieDetailToEntity on MovieDetailDTO {
  MovieDetailEntity toEntity() => MovieDetailEntity(
        id: id,
        title: title,
        genres: genres.map((genre) => genre.toEntity()).toList(),
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        description: description,
        status: status,
        popularity: popularity,
        posterPicture: '${MovieQuery.baseImageHttp}$posterPicture',
        backdropPicture: '${MovieQuery.baseImageHttp}$backdropPicture',
        productionCompanies:
            productionCompanies.map((pC) => pC.toEntity()).toList(),
        releaseDate: DateTime.parse(releaseDate),
        revenue: revenue,
        runtime: runtime,
        tagline: tagline,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}

extension MovieDetailToDTO on MovieDetailEntity {
  MovieDetailDTO toDTO() => MovieDetailDTO(
        id: id,
        title: title,
        genres: genres.map((genre) => genre.toDTO()).toList(),
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        description: description,
        status: status,
        popularity: popularity,
        posterPicture: posterPicture,
        backdropPicture: backdropPicture,
        productionCompanies:
            productionCompanies.map((pC) => pC.toDTO()).toList(),
        releaseDate: releaseDate.toString(),
        revenue: revenue,
        runtime: runtime,
        tagline: tagline,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}

extension MovieDetailToMovie on MovieDetailEntity {
  MovieEntity toMovie() => MovieEntity(
        id: id,
        title: title,
        backdropPath: backdropPicture,
        posterPath: posterPicture,
        genres: genres,
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        description: description,
        popularity: popularity,
        releaseDate: releaseDate,
        voteAverage: voteAverage,
      );
}
