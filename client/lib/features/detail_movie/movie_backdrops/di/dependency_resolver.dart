import 'package:client/core/constant/hive_constant.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_movie/movie_backdrops/cubit/movie_backdrops_cubit.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/data_sources/local/backdrops_local_data_source_impl.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/data_sources/remote/backdrops_remote_data_source_impl.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/dtos/backdrops_movie_dto.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/repository/movie_backdrops_repository_impl.dart';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class MovieDetailBackdropsDependencyResolver {
  static Future<void> register() async {
    final boxMovieBackdrops =
        await Hive.openBox<List<BackdropMoviesDTO>>(HiveConstantBoxName.boxBackdrops);
    DependencyProvider.registerFactory<MovieBackdropsCubit>(
      () => MovieBackdropsCubit(
        repository: DependencyProvider.get<BackdropsMovieRepositoryImpl>(),
      ),
    );

    DependencyProvider.registerLazySingleton<BackDropsLocalDataSourceImpl>(
      () => BackDropsLocalDataSourceImpl(box: boxMovieBackdrops),
    );
    DependencyProvider.registerLazySingleton<BackdropsRemoteDataSourceImpl>(
      () => BackdropsRemoteDataSourceImpl(dio: DependencyProvider.get<Dio>()),
    );
    DependencyProvider.registerLazySingleton<BackdropsMovieRepositoryImpl>(
      () => BackdropsMovieRepositoryImpl(
        localDataSource: DependencyProvider.get<BackDropsLocalDataSourceImpl>(),
        remoteDataSource:
            DependencyProvider.get<BackdropsRemoteDataSourceImpl>(),
      ),
    );
  }
}
