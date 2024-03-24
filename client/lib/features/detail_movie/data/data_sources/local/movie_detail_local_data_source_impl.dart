import 'package:client/features/detail_movie/data/data_sources/local/movie_detail_local_data_source.dart';
import 'package:client/features/detail_movie/data/dtos/movie_detail/movie_detail_dto.dart';
import 'package:client/features/detail_movie/data/entity/movie_detail_entity.dart';
import 'package:client/features/detail_movie/data/mappers/detail_movie_mapper.dart';
import 'package:hive/hive.dart';

class DetailMovieLocalDataSourceImpl implements DetailMovieLocalDataSource {
  final Box<MovieDetailDTO> _box;

  DetailMovieLocalDataSourceImpl({
    required Box<MovieDetailDTO> box,
  }) : _box = box;

  @override
  Future<void> deleteMovieDetail({required int idMovie}) async {
    await _box.delete(idMovie);
  }

  @override
  MovieDetailEntity getSavedMovieDetail({required int idMovie}) {
    final movieDetail = _box.get(idMovie);
    if (movieDetail != null) {
      return movieDetail.toEntity();
    } else {
      throw Exception('db movieDetail is empty');
    }
  }

  @override
  Future<void> saveMovieDetail({
    required MovieDetailEntity movie,
    required int idMovie,
  }) async {
    await _box.put(idMovie, movie.toDTO());
  }
}
