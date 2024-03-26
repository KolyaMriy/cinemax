import 'package:client/features/genre_list/domain/entity/genre_entity.dart';

abstract interface class GenreLocalDataSource {
  void saveGenres({
    required List<GenreEntity> genres,
  });

  List<GenreEntity> getSavedListGenres();

  bool isSavedGenres();

  void clearGenres();

  List<GenreEntity> getGenreListByIds(
    List<int> idsGenre,
  );
}
