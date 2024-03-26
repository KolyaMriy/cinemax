import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/movie_trailer/presentation/cubit/movie_trailer_cubit.dart';
import 'package:client/features/movie_trailer/domain/repository/movie_trailer_repository_impl.dart';

import 'package:dio/dio.dart';

class MovieTrailerDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<MovieTrailerCubit>(
      () => MovieTrailerCubit(
          repository: DependencyProvider.get<MovieTrailerRepositoryImpl>()),
    );
    DependencyProvider.registerLazySingleton<MovieTrailerRepositoryImpl>(
      () => MovieTrailerRepositoryImpl(dio: DependencyProvider.get<Dio>()),
    );
  }
}
