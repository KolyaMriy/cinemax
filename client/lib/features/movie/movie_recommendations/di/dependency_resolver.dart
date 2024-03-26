import 'package:client/core/constant/hive_constant.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/network/connection_checker.dart';
import 'package:client/features/genre_list/domain/repositories/genre_repository_impl.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/movie_recommendations/movie_remote_datasource_impl.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/domain/repository/movie_recommendation/movie_recommendation_repository_impl.dart';
import 'package:client/features/movie/movie_recommendations/presentation/cubit/movie_recommendation_cubit.dart';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class MovieRecommendationDependencyResolver {
  static Future<void> register() async {
    final boxMovie = await Hive.openBox<ListMovieDTO>(HiveConstantBoxName.boxMovieRecommendation);
    DependencyProvider.registerFactory<MovieRecommendationCubit>(
      () => MovieRecommendationCubit(
        repository: DependencyProvider.get<MovieRecommendationRepositoryImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<
        MovieRecommendationRemoteDataSourceImpl>(
      () => MovieRecommendationRemoteDataSourceImpl(
        dio: DependencyProvider.get<Dio>(),
        repository: DependencyProvider.get<GenreRepositoryImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<MovieLocalDataSource>(
      () => MovieLocalDataSourceImpl(movieBox: boxMovie),
    );
    DependencyProvider.registerLazySingleton<MovieRecommendationRepositoryImpl>(
      () => MovieRecommendationRepositoryImpl(
        localDataSource: DependencyProvider.get<MovieLocalDataSourceImpl>(),
        remoteDataSource:
            DependencyProvider.get<MovieRecommendationRemoteDataSourceImpl>(),
        connectionChecker: DependencyProvider.get<ConnectionCheckerImpl>(),
      ),
    );
  }
}
