import 'package:client/core/constant/hive_constant.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_movie/data/data_sources/local/movie_detail_local_data_source_impl.dart';
import 'package:client/features/detail_movie/data/data_sources/remote/movie_detail_remote_data_source_impl.dart';
import 'package:client/features/detail_movie/data/dtos/movie_detail/movie_detail_dto.dart';
import 'package:client/features/detail_movie/domain/repository/detail_movie_repository_impl.dart';
import 'package:client/features/detail_movie/presentation/cubit/detail_movie_cubit.dart';
import 'package:client/features/favorite_movie/domain/repositories/favorite_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class MovieDetailDependencyResolver {
  static Future<void> register() async {
    final boxMovieDetail =
        await Hive.openBox<MovieDetailDTO>(HiveConstantBoxName.boxMovieDetails);
    DependencyProvider.registerFactory<DetailMovieCubit>(
      () => DetailMovieCubit(
        repository: DependencyProvider.get<DetailMovieRepositoryImpl>(),
        favoriteRepository: DependencyProvider.get<FavoriteRepositoryImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<DetailMovieRepositoryImpl>(
      () => DetailMovieRepositoryImpl(
        remoteDataSource:
            DependencyProvider.get<DetailMovieRemoteDataSourceImpl>(),
        localDataSource:
            DependencyProvider.get<DetailMovieLocalDataSourceImpl>(),
      ),
    );

    DependencyProvider.registerLazySingleton<DetailMovieRemoteDataSourceImpl>(
      () => DetailMovieRemoteDataSourceImpl(dio: DependencyProvider.get<Dio>()),
    );
    DependencyProvider.registerLazySingleton<DetailMovieLocalDataSourceImpl>(
      () => DetailMovieLocalDataSourceImpl(box: boxMovieDetail),
    );
  }
}
