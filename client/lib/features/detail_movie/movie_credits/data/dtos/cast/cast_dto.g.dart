// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CastDTOAdapter extends TypeAdapter<CastDTO> {
  @override
  final int typeId = 10;

  @override
  CastDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CastDTO(
      id: fields[1] as int,
      name: fields[2] as String,
      character: fields[3] as String,
      image: fields[4] as String,
      popularity: fields[5] as double,
      knownForDepartment: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CastDTO obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.character)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.popularity)
      ..writeByte(6)
      ..write(obj.knownForDepartment);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CastDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
