import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';
import 'package:client/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:client/features/auth/reset_password/repositories/reset_password_repository.dart';

class ResetPasswordDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<ResetPasswordCubit>(
      () => ResetPasswordCubit(
        repository: DependencyProvider.get<ResetPasswordRepository>(),
      ),
    );
    DependencyProvider.registerLazySingleton<ResetPasswordRepository>(
      () => ResetPasswordRepository(
          repository: DependencyProvider.get<AuthRepository>()),
    );
  }
}
