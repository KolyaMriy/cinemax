import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'movie.g.dart';

@HiveType(typeId: 3)
class MovieEntity extends Equatable {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? originalTitle;
  @HiveField(3)
  final String? description;
  @HiveField(4)
  final double? popularity;
  @HiveField(5)
  final String? posterPath;
  @HiveField(6)
  final String? backdropPath;
  @HiveField(7)
  final DateTime? releaseDate;
  @HiveField(8)
  final double? voteAverage;
  @HiveField(9)
  final List<GenreEntity>? genres;
  @HiveField(10)
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
