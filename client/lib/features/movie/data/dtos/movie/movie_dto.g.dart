// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieCardDTOImpl _$$MovieCardDTOImplFromJson(Map<String, dynamic> json) =>
    _$MovieCardDTOImpl(
      backdropPath: json['backdrop_path'] as String? ?? '',
      posterPath: json['poster_path'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      originalLanguage: json['original_language'] as String? ?? '',
      description: json['overview'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      releaseDate: json['release_date'] as String? ?? '',
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0,
      genres: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$MovieCardDTOImplToJson(_$MovieCardDTOImpl instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLanguage,
      'overview': instance.description,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'genre_ids': instance.genres,
    };
