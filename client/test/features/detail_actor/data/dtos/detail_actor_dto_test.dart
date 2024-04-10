import 'dart:convert';
import 'package:client/features/detail_actor/data/dtos/detail_actor/detail_actor_dto.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/json_reader.dart';

void main() async {
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
    'should be a subclass of DetailActorDTO',
    () async {
      expect(testDetailActorDTO, isInstanceOf<DetailActorDTO>());
    },
  );

  test(
    'DetailActorDTO should return a valid model from json',
    () async {
      // arrange
      final jsonMap = json.decode(
          readJson('helpers/dummy_data/dummy_detail_actor_response.json'));

      // act
      final detailActorDTO =
          DetailActorDTO.fromJson(jsonMap as Map<String, dynamic>);

      // expect
      expect(detailActorDTO, isInstanceOf<DetailActorDTO>());
    },
  );
}
