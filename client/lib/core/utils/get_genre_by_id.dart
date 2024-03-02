import 'package:client/features/genre_list/data/entity/genre_entity.dart';

List<GenreEntity>? getGenreNamesByIds(
    List<int> ids, List<GenreEntity> genreList) {
  return genreList.where((genre) => ids.contains(genre.id)).toList();
}
