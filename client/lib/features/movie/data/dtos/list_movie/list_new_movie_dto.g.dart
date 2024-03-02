// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_new_movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListNewMovieDTOImpl _$$ListNewMovieDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ListNewMovieDTOImpl(
      movies: (json['results'] as List<dynamic>?)
              ?.map((e) => MovieDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$$ListNewMovieDTOImplToJson(
        _$ListNewMovieDTOImpl instance) =>
    <String, dynamic>{
      'results': instance.movies,
      'page': instance.page,
    };
