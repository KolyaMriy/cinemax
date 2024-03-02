import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/movie/popular_movie_genre/cubit/popular_movies_genre_cubit.dart';
import 'package:client/features/movie/popular_movie_genre/repositories/popular_movie_genre_repository.dart';

import 'package:dio/dio.dart';

class PopularMovieGenreDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<PopularMoviesGenreCubit>(
      () => PopularMoviesGenreCubit(
          repository: DependencyProvider.get<PopularMovieGenreRepository>()),
    );
    DependencyProvider.registerLazySingleton<PopularMovieGenreRepository>(
      () => PopularMovieGenreRepository(dio: DependencyProvider.get<Dio>()),
    );
  }
}
