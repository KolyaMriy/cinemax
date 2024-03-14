import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/data/dtos/credits/crew/crew_dto.dart';
import 'package:client/features/detail_movie/data/entity/credits/crew/crew_entity.dart';

extension CrewMapper on CrewDTO {
  CrewEntity toDomain() => CrewEntity(
        image: image != ''
            ? '${MovieQuery.image}$image'
            : 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/694px-Unknown_person.jpg',
        id: id,
        knownForDepartment: knownForDepartment,
        name: name,
        popularity: popularity,
        job: job,
        department: department,
      );
}
