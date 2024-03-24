import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/dtos/backdrops_movie_dto.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/entity/backdrops_movie_entity.dart';

extension BackdropsMovieToEntity on BackdropMoviesDTO {
  BackdropMoviesEntity toEntity() => BackdropMoviesEntity(
        image: '${MovieQuery.baseImageHttp}$image',
        width: width,
        heigh: height,
        aspectRatio: aspectRatio,
      );
}

extension BackdropsMoviesToDTO on BackdropMoviesEntity {
  BackdropMoviesDTO toDTO() => BackdropMoviesDTO(
        image: image,
        width: width,
        height: heigh,
        aspectRatio: aspectRatio,
      );
}
