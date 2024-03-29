import 'package:client/core/constant/hive_constant.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/genre_list/data/data_source/local/genre_local_datasource_impl.dart';
import 'package:client/features/genre_list/data/data_source/remote/genre_remote_datasource_impl.dart';
import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:client/features/genre_list/domain/repositories/genre_repository_impl.dart';
import 'package:client/features/genre_list/presentation/cubit/genre_list_cubit.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class GenreDependencyResolver {
  static Future<void> register() async {
    final boxGenre = await Hive.openBox<GenreDTO>(HiveConstantBoxName.boxNameGenre);
    DependencyProvider.registerFactory<GenreListCubit>(
      () => GenreListCubit(
        repository: DependencyProvider.get<GenreRepositoryImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<GenreRemoteDataSourceImpl>(
      () => GenreRemoteDataSourceImpl(dio: DependencyProvider.get<Dio>()),
    );
    DependencyProvider.registerLazySingleton<GenreLocalDataSourceImpl>(
      () => GenreLocalDataSourceImpl(box: boxGenre),
    );

    DependencyProvider.registerLazySingleton<GenreRepositoryImpl>(
      () => GenreRepositoryImpl(
        remoteDataSource: DependencyProvider.get<GenreRemoteDataSourceImpl>(),
        localDataSource: DependencyProvider.get<GenreLocalDataSourceImpl>(),
      ),
    );
  }
}
