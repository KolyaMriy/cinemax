import 'package:client/features/detail_movie/movie_backdrops/data/data_sources/local/backdrops_local_data_source.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/dtos/backdrops_movie_dto.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/mappers/backdrops_movie_mapper.dart';
import 'package:client/features/detail_movie/movie_backdrops/domain/entity/backdrops_movie_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BackDropsLocalDataSourceImpl implements BackDropsLocalDataSource {
  final Box<List<BackdropMoviesDTO>> _box;

  BackDropsLocalDataSourceImpl({
    required Box<List<BackdropMoviesDTO>> box,
  }) : _box = box;

  @override
  List<BackdropMoviesEntity> getSavedBackDropsMovie({
    required int idMovie,
  }) {
    final backdrops = _box.get(idMovie);
    if (backdrops != null) {
      final result = backdrops.map((e) => e.toEntity()).toList();
      return result;
    } else {
      return <BackdropMoviesEntity>[];
    }
  }

  @override
  Future<void> removeBackDropsMovie({required int idMovie}) async {
    await _box.delete(idMovie);
  }

  @override
  Future<void> saveBackDropsMovie({
    required int idMovie,
    required List<BackdropMoviesEntity> backdrops,
  }) async {
    final backdropsDTO = backdrops.map((e) => e.toDTO()).toList();
    await _box.put(
      idMovie,
      backdropsDTO,
    );
  }
}
