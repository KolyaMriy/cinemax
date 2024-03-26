import 'package:client/core/constant/hive_constant.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/network/connection_checker.dart';
import 'package:client/features/genre_list/domain/repositories/genre_repository_impl.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/popular_movie_genre/popular_movie_genre_remote_data_source_impl.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/domain/repository/popular_movie_genre/popular_movie_genre_repository_impl.dart';
import 'package:client/features/movie/popular_movie_genre/presentation/cubit/popular_movies_genre_cubit.dart';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class PopularMovieGenreDependencyResolver {
  static Future<void> register() async {
    final boxPopularMovie =
        await Hive.openBox<ListMovieDTO>(HiveConstantBoxName.boxNamePopularMovie);

    DependencyProvider.registerFactory<PopularMoviesGenreCubit>(
      () => PopularMoviesGenreCubit(
        repository: DependencyProvider.get<PopularMovieGenreRepositoryImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<
        PopularMovieGenreRemoteDataSourceImpl>(
      () => PopularMovieGenreRemoteDataSourceImpl(
        dio: DependencyProvider.get<Dio>(),
        genreRepository: DependencyProvider.get<GenreRepositoryImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<MovieLocalDataSourceImpl>(
      () => MovieLocalDataSourceImpl(
        movieBox: boxPopularMovie,
      ),
    );
    DependencyProvider.registerLazySingleton<PopularMovieGenreRepositoryImpl>(
      () => PopularMovieGenreRepositoryImpl(
        remoteDataSource:
            DependencyProvider.get<PopularMovieGenreRemoteDataSourceImpl>(),
        localDataSource: DependencyProvider.get<MovieLocalDataSourceImpl>(),
        connectionChecker: DependencyProvider.get<ConnectionCheckerImpl>(),
      ),
    );
  }
}
