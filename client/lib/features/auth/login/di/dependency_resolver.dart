import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';
import 'package:client/features/auth/login/cubit/login_form_cubit.dart';
import 'package:client/features/auth/login/repositories/login_repository_impl.dart';

class LoginDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<LoginFormCubit>(
      () => LoginFormCubit(
        repository: DependencyProvider.get<LoginRepositoryImpl>(),
      ),
    );

    DependencyProvider.registerLazySingleton<LoginRepositoryImpl>(
      () => LoginRepositoryImpl(
          repository: DependencyProvider.get<AuthRepository>()),
    );
  }
}
