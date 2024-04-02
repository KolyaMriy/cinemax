import 'package:client/core/constant/hive_constant.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/favorite_list/data/dtos/favorite_movie_dto.dart';
import 'package:client/features/favorite_list/domain/repositories/favorite_repository_impl.dart';
import 'package:client/features/favorite_list/presentation/cubit/favorite_cubit.dart';
import 'package:hive/hive.dart';

class FavoriteMovieDependencyResolver {
  static Future<void> register() async {
    final favoriteMovie =
        await Hive.openBox<FavoriteMovieDTO>(HiveConstantBoxName.favoriteMovie);
    DependencyProvider.registerFactory<FavoriteCubit>(
      () => FavoriteCubit(
        repository: DependencyProvider.get<FavoriteRepositoryImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<FavoriteRepositoryImpl>(
      () => FavoriteRepositoryImpl(box: favoriteMovie),
    );
  }
}
