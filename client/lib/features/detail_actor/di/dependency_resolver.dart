import 'package:client/core/constant/hive_constant.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_actor/data/data_sources/local/detail_actor_local_datasource_impl.dart';
import 'package:client/features/detail_actor/data/data_sources/remote/detail_actor_remote_datasource_impl.dart';
import 'package:client/features/detail_actor/data/dtos/detail_actor/detail_actor_dto.dart';
import 'package:client/features/detail_actor/domain/repository/detail_actor_repository_impl.dart';
import 'package:client/features/detail_actor/presentation/cubit/detail_actor_cubit.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class DetailActorDependencyResolver {
  static Future<void> register() async {
    final boxActor =
        await Hive.openBox<DetailActorDTO>(HiveConstantBoxName.boxDetailActor);
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
