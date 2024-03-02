import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/movie/new_movie_list/cubit/new_movie_list_cubit.dart';
import 'package:client/features/movie/new_movie_list/repositories/new_movie_repository.dart';

import 'package:dio/dio.dart';

class NewMovieDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<NewMovieListCubit>(
      () => NewMovieListCubit(
        repository: DependencyProvider.get<NewMovieRepository>(),
      ),
    );
    DependencyProvider.registerLazySingleton<NewMovieRepository>(
      () => NewMovieRepository(dio: DependencyProvider.get<Dio>()),
    );
  }
}
