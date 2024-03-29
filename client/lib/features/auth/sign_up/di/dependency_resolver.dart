import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';
import 'package:client/features/auth/sign_up/cubit/sign_up_form_cubit.dart';
import 'package:client/features/auth/sign_up/repositories/sign_up_repository_impl.dart';

class SignUpDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<SignUpFormCubit>(
      () => SignUpFormCubit(
        repository: DependencyProvider.get<SignUpRepositoryImpl>(),
      ),
    );

    DependencyProvider.registerLazySingleton<SignUpRepositoryImpl>(
      () => SignUpRepositoryImpl(
          repository: DependencyProvider.get<AuthRepository>()),
    );
  }
}
