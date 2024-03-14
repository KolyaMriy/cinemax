// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CrewDTOImpl _$$CrewDTOImplFromJson(Map<String, dynamic> json) =>
    _$CrewDTOImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      job: json['job'] as String? ?? '',
      department: json['department'] as String? ?? '',
      image: json['profile_path'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      knownForDepartment: json['known_for_department'] as String? ?? '',
    );

Map<String, dynamic> _$$CrewDTOImplToJson(_$CrewDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'job': instance.job,
      'department': instance.department,
      'profile_path': instance.image,
      'popularity': instance.popularity,
      'known_for_department': instance.knownForDepartment,
    };
