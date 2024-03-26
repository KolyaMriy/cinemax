import 'package:client/features/detail_movie/movie_credits/data/dtos/credits_dto.dart';
import 'package:client/features/detail_movie/movie_credits/data/mappers/cast_mapper.dart';
import 'package:client/features/detail_movie/movie_credits/data/mappers/crew_mapper.dart';
import 'package:client/features/detail_movie/movie_credits/domain/entity/credits_entity.dart';

extension CreditsToEntity on CreditsDTO {
  CreditsEntity toEntity() => CreditsEntity(
        crew: crew.map((e) => e.toEntity()).toList(),
        cast: cast.map((e) => e.toEntity()).toList(),
      );
}

extension CreditsToDTO on CreditsEntity {
  CreditsDTO toDTO() => CreditsDTO(
        crew: crew.map((e) => e.toDTO()).toList(),
        cast: cast.map((e) => e.toDTO()).toList(),
      );
}
