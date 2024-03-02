// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company_dto.dart';

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
