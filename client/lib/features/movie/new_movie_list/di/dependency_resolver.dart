import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/movie/data/data_sources/remote/new_movie/new_movie_remote_datasource_impl.dart';
import 'package:client/features/movie/new_movie_list/cubit/new_movie_list_cubit.dart';

import 'package:dio/dio.dart';

class NewMovieDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<NewMovieListCubit>(
      () => NewMovieListCubit(
        repository: DependencyProvider.get<NewMovieRemoteDataSourceImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<NewMovieRemoteDataSourceImpl>(
      () => NewMovieRemoteDataSourceImpl(dio: DependencyProvider.get<Dio>()),
    );
  }
}
