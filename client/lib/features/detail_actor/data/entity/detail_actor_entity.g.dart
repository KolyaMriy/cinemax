// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_actor_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DetailActorEntityAdapter extends TypeAdapter<DetailActorEntity> {
  @override
  final int typeId = 1;

  @override
  DetailActorEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetailActorEntity(
      id: fields[0] as int,
      biography: fields[6] as String,
      alsoKnownAs: (fields[5] as List?)?.cast<MovieEntity>(),
      name: fields[1] as String,
      deathday: fields[2] as DateTime?,
      birthday: fields[3] as DateTime,
      image: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DetailActorEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.deathday)
      ..writeByte(3)
      ..write(obj.birthday)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.alsoKnownAs)
      ..writeByte(6)
      ..write(obj.biography);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetailActorEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
