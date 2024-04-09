import 'package:client/features/detail_actor/domain/entity/detail_actor_entity.dart';

abstract interface class DetailActorLocalDataSource {
  void saveDetailActor({
    required DetailActorEntity detailActor,
  });

  DetailActorEntity getSavedDetailActor({
    required int actorID,
  });

  void deleteDetailActor({
    required int actorID,
  });
}
