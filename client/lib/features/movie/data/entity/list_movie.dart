import 'package:client/features/movie/data/entity/movie.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'list_movie.g.dart';

@HiveType(typeId: 4)
class ListMovieEntity extends Equatable {
  @HiveField(1)
  final int page;
  @HiveField(2)
  final List<MovieEntity> movies;

  const ListMovieEntity({
    required this.movies,
    required this.page,
  });

  factory ListMovieEntity.empty() => ListMovieEntity(movies: [], page: 0);

  @override
  List<Object> get props => [movies, page];
}
