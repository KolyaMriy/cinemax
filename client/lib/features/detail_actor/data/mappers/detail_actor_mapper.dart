import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_actor/data/dtos/detail_actor/detail_actor_dto.dart';
import 'package:client/features/detail_actor/domain/entity/detail_actor_entity.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:client/features/movie/domain/entity/movie.dart';

extension DetailActorToDTO on DetailActorDTO {
  DetailActorEntity toEntity({
    List<MovieEntity>? castMovie,
  }) =>
      DetailActorEntity(
        id: id,
        biography: biography,
        alsoKnownAs: castMovie,
        name: name,
        deathday: DateTime.tryParse(deathday),
        birthday: DateTime.tryParse(birthday) ?? DateTime.now(),
        image: image == MovieQuery.avatarPlaceHolder
            ? MovieQuery.avatarPlaceHolder
            : image != ''
                ? '${MovieQuery.baseImageHttp}$image'
                : MovieQuery.avatarPlaceHolder,
      );
}

extension DetailActorMapper on DetailActorEntity {
  DetailActorDTO toDTO() {
    return DetailActorDTO(
      id: id,
      biography: biography,
      name: name,
      deathday: deathday.toString(),
      birthday: birthday.toString(),
      image: image,
      alsoKnownAs: alsoKnownAs != null
          ? alsoKnownAs!.map((e) => e.toDTO()).toList()
          : [],
    );
  }
}
