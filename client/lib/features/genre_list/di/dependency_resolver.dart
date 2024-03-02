import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/genre_list/cubit/genre_list_cubit.dart';
import 'package:client/features/genre_list/data/repositories/genre_repository.dart';
import 'package:dio/dio.dart';

class GenreDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<GenreListCubit>(
      () => GenreListCubit(
        repository: DependencyProvider.get<GenreRepository>(),
      ),
    );
    DependencyProvider.registerLazySingleton<GenreRepository>(
      () => GenreRepository(dio: DependencyProvider.get<Dio>()),
    );
  }
}
