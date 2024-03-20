import 'package:client/features/movie/data/data_sources/local/movie_local_datasource.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:hive/hive.dart';

class MovieLocalDataSourceImpl implements MovieLocalDataSource {
  final Box<ListMovieEntity> _box;

  MovieLocalDataSourceImpl({
    required Box<ListMovieEntity> movieBox,
  }) : _box = movieBox;

  @override
  Future<void> clearListMovie() async {
    await _box.clear();
  }

  @override
  ListMovieEntity? getSavedListMovie({required int index}) {
    final listmovie = _box.get(index);
    return listmovie;
  }

  @override
  Future<void> saveMovie({
    required ListMovieEntity listMovie,
    required int index,
  }) async {
    await _box.put(index, listMovie);
  }
}
