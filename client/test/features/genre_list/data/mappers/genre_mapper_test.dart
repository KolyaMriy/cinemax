import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:client/features/genre_list/data/mappers/genre_mappers.dart';
import 'package:client/features/genre_list/domain/entity/genre_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final genreDTO = GenreDTO(
    id: 123,
    name: 'Horror',
  );

  test(
    'should convert GenreDTO to GenreEntity',
    () async {
      expect(genreDTO.toEntity(), isInstanceOf<GenreEntity>());
    },
  );
}
