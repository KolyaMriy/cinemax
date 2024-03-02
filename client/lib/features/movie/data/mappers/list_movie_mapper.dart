import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';

extension ListNewMovieMapper on ListMovieDTO {
  ListMovieEntity toDomain() => ListMovieEntity(
      movies: movies!.map((e) => e.toDomain()).toList(), page: page);
}
