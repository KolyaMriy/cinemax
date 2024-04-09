import 'package:client/features/detail_actor/data/data_sources/local/detail_actor_local_datasource.dart';
import 'package:client/features/detail_actor/data/dtos/detail_actor/detail_actor_dto.dart';
import 'package:client/features/detail_actor/data/mappers/detail_actor_mapper.dart';
import 'package:client/features/detail_actor/domain/entity/detail_actor_entity.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:hive/hive.dart';

class DetailActorLocalDataSourceImpl implements DetailActorLocalDataSource {
  final Box<DetailActorDTO> _boxActor;

  DetailActorLocalDataSourceImpl({
    required Box<DetailActorDTO> boxActor,
  }) : _boxActor = boxActor;

  @override
  void deleteDetailActor({required int actorID}) {
    _boxActor.deleteAt(actorID);
  }

  @override
  void saveDetailActor({required DetailActorEntity detailActor}) {
    _boxActor.put(detailActor.id.toString(), detailActor.toDTO());
  }

  @override
  DetailActorEntity getSavedDetailActor({required int actorID}) {
    final actor = _boxActor.get(actorID.toString());
    if (actor != null) {
      final castMovie = actor.alsoKnownAs.map((e) => e.toEntity()).toList();
      return actor.toEntity(castMovie: castMovie);
    } else {
      throw UnimplementedError();
    }
  }
}
