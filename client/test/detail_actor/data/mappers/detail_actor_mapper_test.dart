import 'package:client/features/detail_actor/data/dtos/detail_actor/detail_actor_dto.dart';
import 'package:client/features/detail_actor/data/mappers/detail_actor_mapper.dart';
import 'package:client/features/detail_actor/domain/entity/detail_actor_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const testDetailActorDTO = DetailActorDTO(
    id: 123,
    name: 'Alex',
    biography: 'actor biography',
    birthday: '00-00-0000',
    deathday: '00-00-0000',
    image: 'image.png',
    alsoKnownAs: [],
  );

  test(
    'should convert GenreDTO to GenreEntity',
    () async {
      expect(testDetailActorDTO.toEntity(), isInstanceOf<DetailActorEntity>());
    },
  );
}
