import 'package:client/features/detail_movie/movie_backdrops/domain/entity/backdrops_movie_entity.dart';

abstract interface class BackdropsRemoteDataSource {
  Future<List<BackdropMoviesEntity>> getBackDropsMovie({required int idMovie});
}
