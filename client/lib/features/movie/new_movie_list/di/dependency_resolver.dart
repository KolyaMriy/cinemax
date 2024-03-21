import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/network/connection_checker.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/new_movie/new_movie_remote_datasource_impl.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/repository/new_movie_repository_impl.dart';
import 'package:client/features/movie/new_movie_list/cubit/new_movie_list_cubit.dart';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class NewMovieDependencyResolver {
  static void register() async {
    final boxNewMovie = await Hive.openBox<ListMovieEntity>('newMovie');
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

    // DependencyProvider.registerLazySingleton<MovieLocalDataSourceImpl>(
    //   () => MovieLocalDataSourceImpl(movieBox: boxNewMovie),
    // );
  }
}
