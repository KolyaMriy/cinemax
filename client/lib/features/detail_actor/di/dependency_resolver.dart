import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_actor/cubit/detail_actor_cubit.dart';
import 'package:client/features/detail_actor/data/repository/detail_actor_repository.dart';

import 'package:dio/dio.dart';

class DetailActorDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<DetailActorCubit>(
      () => DetailActorCubit(
        repository: DependencyProvider.get<DetailActorRepository>(),
      ),
    );
    DependencyProvider.registerLazySingleton<DetailActorRepository>(
      () => DetailActorRepository(dio: DependencyProvider.get<Dio>()),
    );
  }
}
