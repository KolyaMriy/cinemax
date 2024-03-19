import 'package:client/features/movie/data/data_sources/local/movie_local_datasource.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/entity/movie.dart';
import 'package:hive/hive.dart';

class MovieLocalDataSourceImpl implements MovieLocalDataSource {
  final Box<MovieEntity> _box;

  MovieLocalDataSourceImpl({
    required Box<MovieEntity> movieBox,
  }) : _box = movieBox;

  @override
  Future<void> clearListMovie() async {
    await _box.clear();
  }

  @override
  ListMovieEntity getSavedListMovie() {
    final listmovie = _box.values.toList();
    final listmovieEntity = ListMovieEntity(movies: listmovie, page: 1);
    return listmovieEntity;
  }

  @override
  bool isSavedMovie() {
    final result = _box.isNotEmpty;
    return result;
  }

  @override
  Future<void> saveMovie({required ListMovieEntity listMovie}) async {
    final movies = {for (final movie in listMovie.movies) movie.id: movie};
    await _box.putAll(movies);
  }
}
