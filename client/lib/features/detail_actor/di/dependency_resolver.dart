import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_actor/cubit/detail_actor_cubit.dart';
import 'package:client/features/detail_actor/data/data_sources/local/detail_actor_local_datasource_impl.dart';
import 'package:client/features/detail_actor/data/data_sources/remote/detail_actor_remote_datasource_impl.dart';
import 'package:client/features/detail_actor/data/entity/detail_actor_entity.dart';
import 'package:client/features/detail_actor/data/repository/detail_actor_repository_impl.dart';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class DetailActorDependencyResolver {
  static void register() async {
    final boxActor = await Hive.openBox<DetailActorEntity>('detailActor');
    DependencyProvider.registerFactory<DetailActorCubit>(
      () => DetailActorCubit(
        repository: DependencyProvider.get<DetailActorRepositoryImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<DetailActorRepositoryImpl>(
      () => DetailActorRepositoryImpl(
          localDataSource:
              DependencyProvider.get<DetailActorLocalDataSourceImpl>(),
          remoteDataSource:
              DependencyProvider.get<DetailActorRemoteDataSourceImpl>()),
    );

    DependencyProvider.registerLazySingleton<DetailActorRemoteDataSourceImpl>(
      () => DetailActorRemoteDataSourceImpl(dio: DependencyProvider.get<Dio>()),
    );
    DependencyProvider.registerLazySingleton<DetailActorLocalDataSourceImpl>(
      () => DetailActorLocalDataSourceImpl(boxActor: boxActor),
    );
  }
}
