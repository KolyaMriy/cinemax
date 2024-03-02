// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_trailer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieTrailerDTOImpl _$$MovieTrailerDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieTrailerDTOImpl(
      name: json['name'] as String? ?? '',
      youtubeKey: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$$MovieTrailerDTOImplToJson(
        _$MovieTrailerDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.youtubeKey,
    };
