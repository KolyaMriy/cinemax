import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/genre_list/data/repositories/genre_repository_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/movie_recommendations/movie_remote_datasource_impl.dart';
import 'package:client/features/movie/movie_recommendations/cubit/movie_recommendation_cubit.dart';

import 'package:dio/dio.dart';

class MovieRecommendationDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<MovieRecommendationCubit>(
      () => MovieRecommendationCubit(
        repository:
            DependencyProvider.get<MovieRecommendationRemoteDataSourceImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<
        MovieRecommendationRemoteDataSourceImpl>(
      () => MovieRecommendationRemoteDataSourceImpl(
        dio: DependencyProvider.get<Dio>(),
        repository: DependencyProvider.get<GenreRepositoryImpl>(),
      ),
    );
  }
}
