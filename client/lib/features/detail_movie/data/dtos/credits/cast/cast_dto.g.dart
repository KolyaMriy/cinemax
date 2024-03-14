// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CastDTOImpl _$$CastDTOImplFromJson(Map<String, dynamic> json) =>
    _$CastDTOImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      character: json['character'] as String? ?? '',
      image: json['profile_path'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      knownForDepartment: json['known_for_department'] as String? ?? '',
    );

Map<String, dynamic> _$$CastDTOImplToJson(_$CastDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'profile_path': instance.image,
      'popularity': instance.popularity,
      'known_for_department': instance.knownForDepartment,
    };
