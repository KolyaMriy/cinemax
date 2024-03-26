import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/genre_list/domain/repositories/genre_repository_impl.dart';
import 'package:client/features/search_movie/presentation/cubit/search_movie_cubit.dart';
import 'package:client/features/search_movie/domain/repositories/search_movie_repository.dart';

import 'package:dio/dio.dart';

class SearchMovieDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<SearchMovieCubit>(
      () => SearchMovieCubit(
        searchRepository: DependencyProvider.get<SearchRepository>(),
      ),
    );
    DependencyProvider.registerLazySingleton<SearchRepository>(
      () => SearchRepository(
        dio: DependencyProvider.get<Dio>(),
        genreRepository: DependencyProvider.get<GenreRepositoryImpl>(),
      ),
    );
  }
}
