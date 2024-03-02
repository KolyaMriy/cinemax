import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String title;
  final String? originalTitle;
  final String? description;
  final double? popularity;
  final String? posterPath;
  final String? backdropPath;
  final DateTime? releaseDate;
  final double? voteAverage;
  final List<GenreEntity>? genres;
  final String? originalLanguage;

  const MovieEntity({
    required this.id,
    required this.title,
    this.originalLanguage,
    this.backdropPath,
    this.genres,
    this.originalTitle,
    this.description,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.voteAverage,
  });

  @override
  List<Object?> get props {
    return [
      id,
      title,
      originalTitle,
      description,
      popularity,
      posterPath,
      backdropPath,
      releaseDate,
      voteAverage,
      genres,
    ];
  }
}
