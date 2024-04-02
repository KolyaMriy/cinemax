import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/network/connection_checker.dart';
import 'package:client/features/auth/di/dependency_resolver.dart';
import 'package:client/features/auth/login/di/dependency_resolver.dart';
import 'package:client/features/auth/reset_password/di/dependency_resolver.dart';
import 'package:client/features/auth/sign_up/di/dependency_resolver.dart';
import 'package:client/features/auth/verification_email/di/dependency_resolver.dart';
import 'package:client/features/detail_actor/di/dependency_resolver.dart';
import 'package:client/features/detail_movie/di/dependency_resolver.dart';
import 'package:client/features/detail_movie/movie_backdrops/di/dependency_resolver.dart';
import 'package:client/features/detail_movie/movie_credits/di/dependency_resolver.dart';
import 'package:client/features/favorite_list/di/dependency_resolver.dart';
import 'package:client/features/genre_list/di/dependency_resolver.dart';
import 'package:client/features/movie/movie_recommendations/di/dependency_resolver.dart';
import 'package:client/features/movie/new_movie_list/di/dependency_resolver.dart';
import 'package:client/features/movie/popular_movie_genre/di/dependency_resolver.dart';
import 'package:client/features/movie_trailer/di/dependency_resolver.dart';
import 'package:client/features/search_movie/di/dependency_resolver.dart';
import 'package:client/features/theme_switcher/di/dependency_resolver.dart';
import 'package:client/screens/tab_pages/pages/profile/di/dependency_resolver.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class AppDependencyResolver {
  static Future<void> register() async {
    ThemeSwitcherDependencyResolver.register();
    DependencyProvider.registerLazySingleton<Dio>(
      () => Dio(),
    );
    DependencyProvider.registerLazySingleton<ConnectionCheckerImpl>(
      () => ConnectionCheckerImpl(
        internetConnection: InternetConnection(),
      ),
    );
    AuthDependencyResolver.register();
    LoginDependencyResolver.register();
    SignUpDependencyResolver.register();
    ResetPasswordDependencyResolver.register();
    VerificationDependencyResolver.register();
    await NewMovieDependencyResolver.register();
    await GenreDependencyResolver.register();
    await PopularMovieGenreDependencyResolver.register();
    await MovieDetailDependencyResolver.register();
    MovieTrailerDependencyResolver.register();
    await MovieRecommendationDependencyResolver.register();
    SearchMovieDependencyResolver.register();
    await DetailActorDependencyResolver.register();
    await MovieDetailBackdropsDependencyResolver.register();
    await MovieCreditsDependencyResolver.register();
    await FavoriteMovieDependencyResolver.register();
    ProfileDependencyResolver.register();
  }
}
