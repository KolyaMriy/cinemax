import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:equatable/equatable.dart';

class FavoriteMovieEntity extends Equatable {
  final MovieEntity movie;
  final DateTime createdAt;

  const FavoriteMovieEntity({
    required this.movie,
    required this.createdAt,
  });

  @override
  List<Object> get props => [movie, createdAt];
}
