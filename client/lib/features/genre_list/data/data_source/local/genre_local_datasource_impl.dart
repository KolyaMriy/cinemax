import 'package:client/features/genre_list/data/data_source/local/genre_local_datasource.dart';
import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:client/features/genre_list/data/mappers/genre_mappers.dart';
import 'package:client/features/genre_list/domain/entity/genre_entity.dart';
import 'package:hive/hive.dart';

class GenreLocalDataSourceImpl implements GenreLocalDataSource {
  final Box<GenreDTO> _box;

  GenreLocalDataSourceImpl({
    required Box<GenreDTO> box,
  }) : _box = box;

  @override
  Future<void> clearGenres() async {
    await _box.clear();
  }

  @override
  List<GenreEntity> getSavedListGenres() {
    final genres = _box.values.toList();
    if (genres.isNotEmpty) {
      final listGenres = genres.map((e) => e.toEntity()).toList();
      return listGenres;
    } else {
      throw Exception('local genres is empty');
    }
  }

  @override
  bool isSavedGenres() {
    final result = _box.isNotEmpty;
    return result;
  }

  @override
  Future<void> saveGenres({
    required List<GenreEntity> genres,
  }) async {
    final listGenre = {for (final genre in genres) genre.id: genre.toDTO()};
    await _box.putAll(listGenre);
  }

  @override
  List<GenreEntity> getGenreListByIds(List<int> idsGenre) {
    final genres = _box.values.toList();
    final genresIds = <GenreEntity>[];
    for (final genre in genres) {
      for (final index in idsGenre) {
        if (genre.id == index) {
          genresIds.add(genre.toEntity());
        }
      }
    }
    return genresIds;
  }
}
