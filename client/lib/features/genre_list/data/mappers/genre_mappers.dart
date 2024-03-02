import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';

extension GenreMapper on GenreDTO {
  GenreEntity toDomain() => GenreEntity(
        id: id,
        name: name,
      );
}
