import 'package:client/features/detail_movie/movie_backdrops/data/entity/backdrops_movie_entity.dart';

abstract interface class BackDropsLocalDataSource {
  List<BackdropMoviesEntity> getBackDropsMovie({required int idMovie});
  Future<void> saveBackDropsMovie({
    required int idMovie,
    required List<BackdropMoviesEntity> backdrops,
  });
  Future<void> removeBackDropsMovie({required int idMovie});
}
