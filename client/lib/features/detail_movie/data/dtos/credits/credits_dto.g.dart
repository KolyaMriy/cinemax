// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_dto.dart';

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
