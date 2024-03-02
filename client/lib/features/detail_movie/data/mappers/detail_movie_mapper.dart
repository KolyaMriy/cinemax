import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/data/dtos/movie_detail/movie_detail_dto.dart';
import 'package:client/features/detail_movie/data/entity/movie_detail/movie_detail_entity.dart';
import 'package:client/features/detail_movie/data/mappers/production_company_mapper.dart';
import 'package:client/features/genre_list/data/mappers/genre_mappers.dart';

extension MovieDetailMapper on MovieDetailDTO {
  MovieDetailEntity toDomain() => MovieDetailEntity(
        id: id,
        title: title,
        genres: genres.map((genre) => genre.toDomain()).toList(),
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        description: description,
        status: status,
        popularity: popularity,
        posterPicture: '${MovieQuery.image}$posterPicture',
        backdropPicture: '${MovieQuery.image}$backdropPicture',
        productionCompanies:
            productionCompanies.map((pC) => pC.toDomain()).toList(),
        releaseDate: DateTime.parse(releaseDate),
        revenue: revenue,
        runtime: runtime,
        tagline: tagline,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}

