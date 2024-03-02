import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/movie/movie_recommendations/cubit/movie_recommendation_cubit.dart';
import 'package:client/features/movie/movie_recommendations/repositories/movie_recommendations_repository.dart';

import 'package:dio/dio.dart';

class MovieRecommendationDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<MovieRecommendationCubit>(
      () => MovieRecommendationCubit(
        repository: DependencyProvider.get<MovieRecommendationRepository>(),
      ),
    );
    DependencyProvider.registerLazySingleton<MovieRecommendationRepository>(
      () => MovieRecommendationRepository(dio: DependencyProvider.get<Dio>()),
    );
  }
}
