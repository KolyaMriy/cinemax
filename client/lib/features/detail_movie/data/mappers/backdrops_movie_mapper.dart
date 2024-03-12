import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/data/dtos/backdrops_movie/backdrops_movie_dto.dart';
import 'package:client/features/detail_movie/data/entity/backdrops_movie/backdrops_movie_entity.dart';

extension BackdropsMoviesMapper on BackdropMoviesDTO {
  BackdropMoviesEntity toDomain() => BackdropMoviesEntity(
        image: '${MovieQuery.image}$image',
        width: width,
        heigh: height,
        aspectRatio: aspectRatio,
      );
}
