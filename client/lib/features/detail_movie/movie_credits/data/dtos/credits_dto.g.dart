// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreditsDTOAdapter extends TypeAdapter<CreditsDTO> {
  @override
  final int typeId = 8;

  @override
  CreditsDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreditsDTO(
      cast: (fields[1] as List).cast<CastDTO>(),
      crew: (fields[2] as List).cast<CrewDTO>(),
    );
  }

  @override
  void write(BinaryWriter writer, CreditsDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.cast)
      ..writeByte(2)
      ..write(obj.crew);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreditsDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditsDTOImpl _$$CreditsDTOImplFromJson(Map<String, dynamic> json) =>
    _$CreditsDTOImpl(
      cast: (json['cast'] as List<dynamic>?)
              ?.map((e) => CastDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      crew: (json['crew'] as List<dynamic>?)
              ?.map((e) => CrewDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$CreditsDTOImplToJson(_$CreditsDTOImpl instance) =>
    <String, dynamic>{
      'cast': instance.cast,
      'crew': instance.crew,
    };
