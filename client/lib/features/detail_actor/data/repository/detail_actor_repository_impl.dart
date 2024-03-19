import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_actor/data/data_sources/local/detail_actor_local_datasource.dart';
import 'package:client/features/detail_actor/data/data_sources/remote/detail_actor_remote_datasource.dart';
import 'package:client/features/detail_actor/data/entity/detail_actor_entity.dart';
import 'package:client/features/detail_actor/data/repository/detail_actor_repository.dart';
import 'package:dartz/dartz.dart';

class DetailActorRepositoryImpl implements DetailActorRepository {
  final DetailActorLocalDataSource _localDataSource;
  final DetailActorRemoteDataSource _remoteDataSource;

  DetailActorRepositoryImpl({
    required DetailActorLocalDataSource localDataSource,
    required DetailActorRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, void>> deleteDetailActor({
    required int actorID,
  }) async {
    try {
      final result = _localDataSource.deleteDetailActor(actorID: actorID);
      return right(result);
    } catch (e) {
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, DetailActorEntity>> getLocalDetailActor({
    required int actorID,
  }) async {
    try {
      final result = _localDataSource.getSavedDetailActor(actorID: actorID);
      return right(result);
    } catch (e) {
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, DetailActorEntity>> getRemoteDetailActor({
    required int actorID,
  }) async {
    try {
      final result = await _remoteDataSource.getDetailActor(actorID: actorID);
      return right(result);
    } catch (e) {
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<bool> isSavedDetailActor({
    required int actorID,
  }) async {
    try {
      final result = _localDataSource.isSavedDetailActor(actorID: actorID);
      return result;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<Either<Failure, void>> saveDetailActor({
    required DetailActorEntity detailActor,
  }) async {
    try {
      final result = _localDataSource.saveDetailActor(detailActor: detailActor);
      return right(result);
    } catch (e) {
      return const Left(Failure.serverError());
    }
  }
}
