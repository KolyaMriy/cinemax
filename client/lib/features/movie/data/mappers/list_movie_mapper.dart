import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';

extension ListNewMovieMapperToDomain on ListMovieDTO {
  ListMovieEntity toEntity() => ListMovieEntity(
        movies: movies!.map((e) => e.toEntity()).toList(),
        page: page,
      );
}

extension ListNewMovieMapperToEntity on ListMovieEntity {
  ListMovieDTO toDTO() => ListMovieDTO(
        movies: movies.map((e) => e.toDTO()).toList(),
        page: page,
      );
}
