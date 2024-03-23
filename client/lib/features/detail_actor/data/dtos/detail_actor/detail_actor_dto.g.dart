// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_actor_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DetailActorDTOAdapter extends TypeAdapter<DetailActorDTO> {
  @override
  final int typeId = 1;

  @override
  DetailActorDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetailActorDTO(
      name: fields[0] as String,
      biography: fields[1] as String,
      birthday: fields[2] as String,
      id: fields[3] as int,
      image: fields[4] as String,
      deathday: fields[5] as String,
      alsoKnownAs: (fields[6] as List).cast<MovieDTO>(),
    );
  }

  @override
  void write(BinaryWriter writer, DetailActorDTO obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.biography)
      ..writeByte(2)
      ..write(obj.birthday)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.deathday)
      ..writeByte(6)
      ..write(obj.alsoKnownAs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetailActorDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      alsoKnownAs: (json['alsoKnownAs'] as List<dynamic>?)
              ?.map((e) => MovieDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
      'alsoKnownAs': instance.alsoKnownAs,
    };
