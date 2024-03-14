import 'package:client/features/detail_movie/data/dtos/credits/credits_dto.dart';
import 'package:client/features/detail_movie/data/entity/credits/credits_entity.dart';
import 'package:client/features/detail_movie/data/mappers/cast_mapper.dart';
import 'package:client/features/detail_movie/data/mappers/crew_mapper.dart';

extension CreditsMapper on CreditsDTO {
  CreditsEntity toDomain() => CreditsEntity(
        crew: crew.map((e) => e.toDomain()).toList(),
        cast: cast.map((e) => e.toDomain()).toList(),
      );
}
