import 'package:client/features/genre_list/data/entity/genre_entity.dart';

abstract interface class GenreRemoteDataSource {
  Future<List<GenreEntity>> getGenreList();
  Future<List<GenreEntity>> getGenreListByIds(
    List<int> idsGenre,
  );
}
