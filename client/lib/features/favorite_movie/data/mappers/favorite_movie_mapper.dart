import 'package:client/features/favorite_movie/data/dtos/favorite_movie_dto.dart';
import 'package:client/features/favorite_movie/domain/entity/favorite_movie_entity.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:client/features/movie/domain/entity/movie.dart';

extension FavoriteMovieMapperToEntity on FavoriteMovieDTO {
  FavoriteMovieEntity toEntity() => FavoriteMovieEntity(
        movie: movie != null ? movie!.toEntity() : MovieEntity.empty(),
        createdAt: createdAt,
      );
}

extension FavoriteMovieMapperToDTO on FavoriteMovieEntity {
  FavoriteMovieDTO toDTO() => FavoriteMovieDTO(
        movie: movie.toDTO(),
        createdAt: createdAt,
      );
}
