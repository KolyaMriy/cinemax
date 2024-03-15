import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_actor/data/dtos/detail_actor/detail_actor_dto.dart';
import 'package:client/features/detail_actor/data/entity/detail_actor_entity.dart';
import 'package:client/features/movie/data/entity/movie.dart';

extension DetailActorMapper on DetailActorDTO {
  DetailActorEntity toDomain({
    List<MovieEntity>? castMovie,
  }) =>
      DetailActorEntity(
        id: id,
        biography: biography,
        alsoKnownAs: castMovie,
        name: name,
        deathday: DateTime.tryParse(deathday),
        birthday: DateTime.tryParse(birthday) ?? DateTime.now(),
        image: '${MovieQuery.image}$image',
      );
}
