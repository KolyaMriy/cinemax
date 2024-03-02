import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:client/features/detail_movie/detail_movie.dart';
import 'package:client/screens/auth/log_in/log_in_screen.dart';
import 'package:client/screens/auth/reset_password/reset_password_screen.dart';
import 'package:client/screens/auth/sign_up/sing_up_screen.dart';
import 'package:client/screens/auth/verification_email/verification_email_screen.dart';
import 'package:client/screens/splash/splash_screen.dart';
import 'package:client/screens/tab_pages/pages/favorite/favorite_screen.dart';
import 'package:client/screens/tab_pages/pages/home/home_screen.dart';
import 'package:client/screens/tab_pages/pages/profile/profile_screen.dart';
import 'package:client/screens/tab_pages/pages/search/search_screen.dart';
import 'package:client/screens/tab_pages/tab_page.dart';
import 'package:client/screens/welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final rootNavigationKey = GlobalKey<NavigatorState>();
  static final homeNavigationKey = GlobalKey<NavigatorState>();
  static final homeTab = GlobalKey<NavigatorState>();
  static final searchTab = GlobalKey<NavigatorState>();
  static final favoriteTab = GlobalKey<NavigatorState>();
  static final profileTab = GlobalKey<NavigatorState>();

  static const String _splashPath = '/splash';
  static const String _welcomePath = '/welcome';
  static const String _logInPath = 'logIn';
  static const String _resetPasswordPath = 'resetPassword';
  static const String _verificationEmailPath = 'verificationEmail';
  static const String _singUpPath = 'singUp';
  static const String _detailMoviePath = 'detailMovie';
  static const String _homePath = '/home';
  static const String _searchPath = '/search';
  static const String _favoritePath = '/favorite';
  static const String _profilePath = '/profile';

  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigationKey,
    initialLocation: AppRoutes._splashPath,
    routes: [
      GoRoute(
        path: AppRoutes._splashPath,
        name: AppRouterName.splashName,
        pageBuilder: (_, state) => CupertinoPage<void>(
          child: SplashScreen(
            bloc: DependencyProvider.get<AuthBloc>(),
          ),
        ),
      ),
      StatefulShellRoute.indexedStack(
        builder: (_, state, shell) => TabPage(shell),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                  name: AppRouterName.homeName,
                  path: AppRoutes._homePath,
                  builder: (_, state) => const HomeScreen(),
                  routes: [
                    GoRoute(
                      path: _detailMoviePath,
                      name: AppRouterName.detailMovieName,
                      pageBuilder: (_, state) {
                        final id = state.extra! as int;
                        return CupertinoPage(
                          child: DetailMovieScreen(id: id),
                        );
                      },
                    ),
                  ]),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes._searchPath,
                builder: (_, state) => const SearchScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes._favoritePath,
                builder: (_, state) => const FavoriteScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes._profilePath,
                name: AppRouterName.profilelName,
                builder: (_, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
          path: AppRoutes._welcomePath,
          name: AppRouterName.welcomeName,
          pageBuilder: (_, state) => const CupertinoPage<void>(
                child: WelcomeScreen(),
              ),
          routes: [
            GoRoute(
              path: AppRoutes._logInPath,
              name: AppRouterName.logInName,
              pageBuilder: (_, state) => const CupertinoPage<void>(
                child: LoginScreen(),
              ),
              routes: [
                GoRoute(
                    path: AppRoutes._resetPasswordPath,
                    name: AppRouterName.resetPasswordName,
                    pageBuilder: (_, state) => const CupertinoPage<void>(
                          child: ResetPasswordScreen(),
                        ),
                    routes: [
                      GoRoute(
                          path: AppRoutes._verificationEmailPath,
                          name: AppRouterName.verificationEmailName,
                          pageBuilder: (_, state) {
                            final emailAddress = state.extra! as String;
                            return CupertinoPage<void>(
                              child: VerificationEmailScreen(
                                emailAddress: emailAddress,
                              ),
                            );
                          })
                    ])
              ],
            ),
            GoRoute(
              path: AppRoutes._singUpPath,
              name: AppRouterName.singUpName,
              pageBuilder: (_, state) => const CupertinoPage<void>(
                child: SignUpScreen(),
              ),
            ),
          ]),
    ],
  );
}
