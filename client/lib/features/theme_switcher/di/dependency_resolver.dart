import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/theme_switcher/presentation/cubit/theme_switcher_cubit.dart';

class ThemeSwitcherDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<ThemeSwitcherCubit>(
      () => ThemeSwitcherCubit(),
    );
  }
}
