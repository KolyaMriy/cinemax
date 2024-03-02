import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';

class AuthDependencyResolver {
  static void register() {
    DependencyProvider.registerLazySingleton<AuthRepository>(
      () => AuthRepository(),
    );
    DependencyProvider.registerFactory<AuthBloc>(
      () => AuthBloc(
        repository: DependencyProvider.get<AuthRepository>(),
      ),
    );
  }
}
