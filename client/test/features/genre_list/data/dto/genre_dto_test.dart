import 'dart:convert';
import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/json_reader.dart';

void main() async {
  final testGenreDTO = GenreDTO(
    id: 123,
    name: 'Horror',
  );

  test(
    'should be a subclass of GenreDTO',
    () async {
      expect(testGenreDTO, isInstanceOf<GenreDTO>());
    },
  );

  test(
    'GenreDTO should return a valid model from json',
    () async {
      // arrange
      final jsonMap =
          json.decode(readJson('helpers/dummy_data/dummy_genre_response.json'));

      // act
      final genreDTO = GenreDTO.fromJson(jsonMap as Map<String, dynamic>);

      // expect
      expect(genreDTO, equals(genreDTO));
    },
  );
}
