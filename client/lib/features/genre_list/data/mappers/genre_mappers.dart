import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:client/features/genre_list/domain/entity/genre_entity.dart';

extension GenreToEntity on GenreDTO {
  GenreEntity toEntity() => GenreEntity(
        id: id,
        name: name,
      );
}

extension GenreToDTO on GenreEntity {
  GenreDTO toDTO() => GenreDTO(
        id: id,
        name: name,
      );
}
