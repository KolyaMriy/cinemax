import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/search_movie/cubit/search_movie_cubit.dart';
import 'package:client/features/search_movie/repositories/search_movie_repository.dart';

import 'package:dio/dio.dart';

class SearchMovieDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<SearchMovieCubit>(
      () => SearchMovieCubit(
        searchRepository: DependencyProvider.get<SearchRepository>(),
      ),
    );
    DependencyProvider.registerLazySingleton<SearchRepository>(
      () => SearchRepository(dio: DependencyProvider.get<Dio>()),
    );
  }
}
