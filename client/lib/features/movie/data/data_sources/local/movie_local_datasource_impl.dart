import 'package:client/features/movie/data/data_sources/local/movie_local_datasource.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/list_movie_mapper.dart';
import 'package:hive/hive.dart';

class MovieLocalDataSourceImpl implements MovieLocalDataSource {
  final Box<ListMovieDTO> _box;

  MovieLocalDataSourceImpl({
    required Box<ListMovieDTO> movieBox,
  }) : _box = movieBox;

  @override
  Future<void> clearListMovie() async {
    await _box.clear();
  }

  @override
  ListMovieEntity? getSavedListMovie({required int index}) {
    final listmovie = _box.get(index);
    if (listmovie != null) {
      return listmovie.toEntity();
    } else {
      return null;
    }
  }

  @override
  Future<void> saveMovie({
    required ListMovieEntity listMovie,
    required int index,
  }) async {
    await _box.put(index, listMovie.toDTO());
  }
}
