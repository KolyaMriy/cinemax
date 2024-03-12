// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backdrops_movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackdropMoviesDTOImpl _$$BackdropMoviesDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BackdropMoviesDTOImpl(
      image: json['file_path'] as String? ?? '',
      width: (json['width'] as num?)?.toDouble() ?? 0,
      height: (json['height'] as num?)?.toDouble() ?? 0,
      aspectRatio: (json['aspect_ratio'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$BackdropMoviesDTOImplToJson(
        _$BackdropMoviesDTOImpl instance) =>
    <String, dynamic>{
      'file_path': instance.image,
      'width': instance.width,
      'height': instance.height,
      'aspect_ratio': instance.aspectRatio,
    };
