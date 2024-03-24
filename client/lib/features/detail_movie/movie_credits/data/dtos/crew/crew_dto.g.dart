// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CrewDTOAdapter extends TypeAdapter<CrewDTO> {
  @override
  final int typeId = 6;

  @override
  CrewDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CrewDTO(
      id: fields[1] as int,
      name: fields[2] as String,
      job: fields[3] as String,
      department: fields[4] as String,
      image: fields[5] as String,
      popularity: fields[6] as double,
      knownForDepartment: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CrewDTO obj) {
    writer
      ..writeByte(7)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.job)
      ..writeByte(4)
      ..write(obj.department)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.popularity)
      ..writeByte(7)
      ..write(obj.knownForDepartment);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CrewDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
