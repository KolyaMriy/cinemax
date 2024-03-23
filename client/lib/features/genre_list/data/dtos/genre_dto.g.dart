// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GenreDTOAdapter extends TypeAdapter<GenreDTO> {
  @override
  final int typeId = 2;

  @override
  GenreDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenreDTO(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GenreDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenreDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenreDTOImpl _$$GenreDTOImplFromJson(Map<String, dynamic> json) =>
    _$GenreDTOImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$GenreDTOImplToJson(_$GenreDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
