// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailDTOImpl _$$MovieDetailDTOImplFromJson(Map<String, dynamic> json) =>
    _$MovieDetailDTOImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      productionCompanies: (json['production_companies'] as List<dynamic>?)
              ?.map((e) =>
                  ProductionCompanyDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      originalLanguage: json['original_language'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      description: json['overview'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      posterPicture: json['poster_path'] as String? ?? '',
      backdropPicture: json['backdrop_path'] as String? ?? '',
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      voteCount: (json['vote_count'] as num?)?.toDouble() ?? 0.0,
      runtime: json['runtime'] as int? ?? 0,
      revenue: (json['revenue'] as num?)?.toDouble() ?? 0.0,
      status: json['status'] as String? ?? '',
      tagline: json['tagline'] as String? ?? '',
      releaseDate: json['release_date'] as String? ?? '',
    );

Map<String, dynamic> _$$MovieDetailDTOImplToJson(
        _$MovieDetailDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'production_companies': instance.productionCompanies,
      'genres': instance.genres,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.description,
      'popularity': instance.popularity,
      'poster_path': instance.posterPicture,
      'backdrop_path': instance.backdropPicture,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'runtime': instance.runtime,
      'revenue': instance.revenue,
      'status': instance.status,
      'tagline': instance.tagline,
      'release_date': instance.releaseDate,
    };
