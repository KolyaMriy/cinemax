import 'package:client/features/detail_actor/data/data_sources/local/detail_actor_local_datasource.dart';
import 'package:client/features/detail_actor/data/entity/detail_actor_entity.dart';
import 'package:hive/hive.dart';

class DetailActorLocalDataSourceImpl implements DetailActorLocalDataSource {
  final Box<DetailActorEntity> _boxActor;

  DetailActorLocalDataSourceImpl({required Box<DetailActorEntity> boxActor})
      : _boxActor = boxActor;
  @override
  void deleteDetailActor({required int actorID}) {
    // TODO: implement deleteDetailActor
    throw UnimplementedError();
  }

  @override
  bool isSavedDetailActor({required int actorID}) {
    final result = _boxActor.get(actorID.toString());
    if (result == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  void saveDetailActor({required DetailActorEntity detailActor}) {
    _boxActor.put(detailActor.id.toString(), detailActor);
  }

  @override
  DetailActorEntity getSavedDetailActor({required int actorID}) {
    final actor = _boxActor.get(actorID.toString());
    if (actor != null) {
      return actor;
    } else {
      throw UnimplementedError();
    }
  }
}
