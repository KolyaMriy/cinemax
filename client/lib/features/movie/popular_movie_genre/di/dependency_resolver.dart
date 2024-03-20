import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/genre_list/data/repositories/genre_repository_impl.dart';
import 'package:client/features/movie/data/data_sources/local/movie_local_datasource_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/popular_movie_genre/popular_movie_genre_remote_data_source_impl.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/popular_movie_genre/cubit/popular_movies_genre_cubit.dart';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class PopularMovieGenreDependencyResolver {
  static void register() async {
    final boxPopularMovie =
        await Hive.openBox<ListMovieEntity>('boxPopularMovie');
    DependencyProvider.registerFactory<PopularMoviesGenreCubit>(
      () => PopularMoviesGenreCubit(
        remoteDataSource:
            DependencyProvider.get<PopularMovieGenreRemoteDataSourceImpl>(),
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
  }
}
