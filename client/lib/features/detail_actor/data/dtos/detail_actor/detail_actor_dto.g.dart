// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_actor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailActorDTOImpl _$$DetailActorDTOImplFromJson(Map<String, dynamic> json) =>
    _$DetailActorDTOImpl(
      name: json['name'] as String? ?? '',
      biography: json['biography'] as String? ?? '',
      birthday: json['birthday'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      image: json['profile_path'] as String? ?? '',
      deathday: json['deathday'] as String? ?? '',
    );

Map<String, dynamic> _$$DetailActorDTOImplToJson(
        _$DetailActorDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'biography': instance.biography,
      'birthday': instance.birthday,
      'id': instance.id,
      'profile_path': instance.image,
      'deathday': instance.deathday,
    };
