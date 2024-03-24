import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/movie_credits/data/dtos/crew/crew_dto.dart';
import 'package:client/features/detail_movie/movie_credits/data/entity/crew/crew_entity.dart';

extension CrewMapper on CrewDTO {
  CrewEntity toEntity() => CrewEntity(
        image: image != '' && image != MovieQuery.baseImageHttp
            ? '${MovieQuery.baseImageHttp}$image'
            : MovieQuery.avatarPlaceHolder,
        id: id,
        knownForDepartment: knownForDepartment,
        name: name,
        popularity: popularity,
        job: job,
        department: department,
      );
}

extension CrewToDTO on CrewEntity {
  CrewDTO toDTO() => CrewDTO(
        image: image,
        id: id,
        knownForDepartment: knownForDepartment,
        name: name,
        popularity: popularity,
        job: job,
        department: department,
      );
}
