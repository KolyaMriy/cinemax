import 'package:client/core/api/api_config.dart';

import 'package:client/features/detail_movie/data/dtos/credits/cast/cast_dto.dart';

import 'package:client/features/detail_movie/data/entity/credits/cast/cast_entity.dart';

extension CastMapper on CastDTO {
  CastEntity toDomain() => CastEntity(
        image: image != ''
            ? '${MovieQuery.image}$image'
            : 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/694px-Unknown_person.jpg',
        id: id,
        knownForDepartment: knownForDepartment,
        name: name,
        popularity: popularity,
        character: character,
      );
}
