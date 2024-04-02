import 'package:client/core/di/dependency_provider.dart';
import 'package:client/screens/tab_pages/pages/profile/cubit/profile_cubit.dart';

class ProfileDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<ProfileCubit>(
      () => ProfileCubit(),
    );
  }
}
