import 'package:client/features/detail_actor/domain/entity/detail_actor_entity.dart';
import 'package:client/features/movie/domain/entity/movie.dart';

abstract interface class DetailActorRemoteDataSource {
  Future<DetailActorEntity> getDetailActor({
    required int actorID,
  });
  Future<List<MovieEntity>> getCastMovie({
    required int actorId,
  });
}
