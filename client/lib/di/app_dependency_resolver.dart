import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/di/dependency_resolver.dart';
import 'package:client/features/auth/login/di/dependency_resolver.dart';
import 'package:client/features/auth/reset_password/di/dependency_resolver.dart';
import 'package:client/features/auth/sign_up/di/dependency_resolver.dart';
import 'package:client/features/auth/verification_email/di/dependency_resolver.dart';
import 'package:client/features/detail_movie/di/dependency_resolver.dart';
import 'package:client/features/genre_list/di/dependency_resolver.dart';
import 'package:client/features/movie/di/dependency_resolver.dart';
import 'package:client/features/movie/new_movie_list/di/dependency_resolver.dart';
import 'package:client/features/movie/popular_movie_genre/di/dependency_resolver.dart';
import 'package:client/features/movie_trailer/di/dependency_resolver.dart';
import 'package:client/features/search_movie/di/dependency_resolver.dart';

import 'package:dio/dio.dart';

class AppDependencyResolver {
  static void register() {
    DependencyProvider.registerLazySingleton<Dio>(
      () => Dio(),
    );
    AuthDependencyResolver.register();
    LoginDependencyResolver.register();
    SignUpDependencyResolver.register();
    ResetPasswordDependencyResolver.register();
    VerificationDependencyResolver.register();
    NewMovieDependencyResolver.register();
    GenreDependencyResolver.register();
    PopularMovieGenreDependencyResolver.register();
    MovieDetailDependencyResolver.register();
    MovieTrailerDependencyResolver.register();
    MovieRecommendationDependencyResolver.register();
    SearchMovieDependencyResolver.register();
  }
}
