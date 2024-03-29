import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';
import 'package:client/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:client/features/auth/reset_password/repositories/reset_password_repository_impl.dart';

class ResetPasswordDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<ResetPasswordCubit>(
      () => ResetPasswordCubit(
        repository: DependencyProvider.get<ResetPasswordRepositoryImpl>(),
      ),
    );
    DependencyProvider.registerLazySingleton<ResetPasswordRepositoryImpl>(
      () => ResetPasswordRepositoryImpl(
          repository: DependencyProvider.get<AuthRepository>()),
    );
  }
}
