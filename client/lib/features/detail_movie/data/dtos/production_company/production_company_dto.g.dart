// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductionCompanyDTOAdapter extends TypeAdapter<ProductionCompanyDTO> {
  @override
  final int typeId = 9;

  @override
  ProductionCompanyDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductionCompanyDTO(
      id: fields[1] as int,
      name: fields[2] as String,
      country: fields[3] as String,
      logoImage: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductionCompanyDTO obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.logoImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCompanyDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionCompanyDTOImpl _$$ProductionCompanyDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCompanyDTOImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      country: json['origin_country'] as String? ?? '',
      logoImage: json['logo_path'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductionCompanyDTOImplToJson(
        _$ProductionCompanyDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin_country': instance.country,
      'logo_path': instance.logoImage,
    };
