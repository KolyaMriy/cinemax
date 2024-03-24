import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_movie/cubit/detail_movie_cubit.dart';
import 'package:client/features/detail_movie/data/repository/detail_movie_repository.dart';

import 'package:dio/dio.dart';

class MovieDetailDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<DetailMovieCubit>(
      () => DetailMovieCubit(
        repository: DependencyProvider.get<DetailMovieRepository>(),
      ),
    );
    DependencyProvider.registerLazySingleton<DetailMovieRepository>(
      () => DetailMovieRepository(dio: DependencyProvider.get<Dio>()),
    );
  }
}
