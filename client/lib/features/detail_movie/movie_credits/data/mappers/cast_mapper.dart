import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/movie_credits/data/dtos/cast/cast_dto.dart';

import 'package:client/features/detail_movie/movie_credits/domain/entity/cast/cast_entity.dart';

extension CastToEntity on CastDTO {
  CastEntity toEntity() => CastEntity(
        image: image != MovieQuery.avatarPlaceHolder
            ? image != '' && image != MovieQuery.baseImageHttp
                ? '${MovieQuery.baseImageHttp}$image'
                : MovieQuery.avatarPlaceHolder
            : image,
        id: id,
        knownForDepartment: knownForDepartment,
        name: name,
        popularity: popularity,
        character: character,
      );
}

extension CastMapper on CastEntity {
  CastDTO toDTO() => CastDTO(
        image: image,
        id: id,
        knownForDepartment: knownForDepartment,
        name: name,
        popularity: popularity,
        character: character,
      );
}
