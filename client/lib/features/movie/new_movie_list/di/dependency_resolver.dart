import 'package:client/core/constant/hive_constant.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/network/connection_checker.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/new_movie/new_movie_remote_datasource_impl.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/domain/repository/new_movie/new_movie_repository_impl.dart';
import 'package:client/features/movie/new_movie_list/presentation/cubit/new_movie_list_cubit.dart';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class NewMovieDependencyResolver {
  static Future<void> register() async {
    final boxNewMovie =
        await Hive.openBox<ListMovieDTO>(HiveConstantBoxName.boxNewMovie);
    final localDataSource = MovieLocalDataSourceImpl(movieBox: boxNewMovie);
    DependencyProvider.registerFactory<NewMovieListCubit>(
      () => NewMovieListCubit(
        repository: DependencyProvider.get<NewMovieRepositoryImpl>(),
      ),
    );

    DependencyProvider.registerLazySingleton<NewMovieRepositoryImpl>(
      () => NewMovieRepositoryImpl(
        localDataSource: localDataSource,
        newMovieRemoteDataSource:
            DependencyProvider.get<NewMovieRemoteDataSourceImpl>(),
        connectionChecker: DependencyProvider.get<ConnectionCheckerImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<NewMovieRemoteDataSourceImpl>(
      () => NewMovieRemoteDataSourceImpl(dio: DependencyProvider.get<Dio>()),
    );
  }
}
