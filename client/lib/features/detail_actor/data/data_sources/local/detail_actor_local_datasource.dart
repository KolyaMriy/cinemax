import 'package:client/features/detail_actor/data/entity/detail_actor_entity.dart';

abstract interface class DetailActorLocalDataSource {
  void saveDetailActor({
    required DetailActorEntity detailActor,
  });

  DetailActorEntity getSavedDetailActor({
    required int actorID,
  });

  bool isSavedDetailActor({
    required int actorID,
  });

  void deleteDetailActor({
    required int actorID,
  });
}
