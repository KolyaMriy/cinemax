import 'package:client/core/constant/hive_constant.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_movie/movie_credits/cubit/movie_credits_cubit.dart';
import 'package:client/features/detail_movie/movie_credits/data/data_sources/local/movie_credits_local_data_source_impl.dart';
import 'package:client/features/detail_movie/movie_credits/data/data_sources/remote/movie_credits_remote_data_source_impl.dart';
import 'package:client/features/detail_movie/movie_credits/data/dtos/credits_dto.dart';
import 'package:client/features/detail_movie/movie_credits/repository/credits_repository_impl.dart';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class MovieCreditsDependencyResolver {
  static Future<void> register() async {
    final boxCredits =
        await Hive.openBox<CreditsDTO>(HiveConstantBoxName.boxMovieCredits);
    DependencyProvider.registerFactory<MovieCreditsCubit>(
      () => MovieCreditsCubit(
        repository: DependencyProvider.get<CreditsRepositoryImpl>(),
      ),
    );

    DependencyProvider.registerLazySingleton<CreditsMovieLocalDataSourceImpl>(
      () => CreditsMovieLocalDataSourceImpl(box: boxCredits),
    );
    DependencyProvider.registerLazySingleton<CreditsMovieRemoteDataSourceImpl>(
      () =>
          CreditsMovieRemoteDataSourceImpl(dio: DependencyProvider.get<Dio>()),
    );
    DependencyProvider.registerLazySingleton<CreditsRepositoryImpl>(
      () => CreditsRepositoryImpl(
        localDataSource:
            DependencyProvider.get<CreditsMovieLocalDataSourceImpl>(),
        remoteDataSource:
            DependencyProvider.get<CreditsMovieRemoteDataSourceImpl>(),
      ),
    );
  }
}
