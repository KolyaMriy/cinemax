import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_actor/domain/entity/detail_actor_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class DetailActorRepository {
  Future<Either<Failure, DetailActorEntity>> getRemoteDetailActor({
    required int actorID,
  });
  Future<Either<Failure, DetailActorEntity?>> getLocalDetailActor({
    required int actorID,
  });

  Either<Failure, void> saveDetailActor({
    required DetailActorEntity detailActor,
  });

  Either<Failure, void> deleteDetailActor({
    required int actorID,
  });
}
