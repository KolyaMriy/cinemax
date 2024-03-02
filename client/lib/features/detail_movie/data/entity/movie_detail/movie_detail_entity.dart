import 'package:client/features/detail_movie/data/entity/production_company/production_company_entity.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:equatable/equatable.dart';

class MovieDetailEntity extends Equatable {
  final int id;
  final List<GenreEntity> genres;
  final String title;
  final String originalLanguage;
  final String originalTitle;
  final String description;
  final double popularity;
  final String posterPicture;
  final List<ProductionCompanyEntity> productionCompanies;
  final DateTime releaseDate;
  final double revenue;
  final int runtime;
  final String status;
  final String tagline;
  final double voteAverage;
  final double voteCount;
  final String backdropPicture;

  const MovieDetailEntity({
    required this.id,
    required this.genres,
    required this.title,
    required this.originalLanguage,
    required this.originalTitle,
    required this.description,
    required this.popularity,
    required this.posterPicture,
    required this.productionCompanies,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.status,
    required this.tagline,
    required this.voteAverage,
    required this.voteCount,
    required this.backdropPicture,
  });

  factory MovieDetailEntity.empty() => MovieDetailEntity(
        id: 0,
        genres: const [],
        title: '',
        originalLanguage: '',
        originalTitle: '',
        description: '',
        popularity: 0.0,
        posterPicture: '',
        productionCompanies: const [],
        releaseDate: DateTime.now(),
        revenue: 0.0,
        runtime: 0,
        status: '',
        tagline: '',
        voteAverage: 0.0,
        voteCount: 0.0,
        backdropPicture: '',
      );

  @override
  String toString() {
    return 'MovieDetailEntity(id: $id, genres: $genres, title: $title, originalLanguage: $originalLanguage, originalTitle: $originalTitle, description: $description, popularity: $popularity, posterPicture: $posterPicture, productionCompanies: $productionCompanies, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, voteAverage: $voteAverage, voteCount: $voteCount, backdropPicture: $backdropPicture)';
  }

  @override
  List<Object> get props {
    return [
      id,
      genres,
      title,
      originalLanguage,
      originalTitle,
      description,
      popularity,
      posterPicture,
      productionCompanies,
      releaseDate,
      revenue,
      runtime,
      status,
      tagline,
      voteAverage,
      voteCount,
      backdropPicture,
    ];
  }
}
