import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router.dart';
import 'package:client/di/app_dependency_resolver.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:client/features/genre_list/presentation/cubit/genre_list_cubit.dart';
import 'package:client/features/movie/popular_movie_genre/presentation/cubit/popular_movies_genre_cubit.dart';
import 'package:client/features/search_movie/presentation/cubit/search_movie_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/theme/dark_theme.dart';

class CinemaxApp extends StatefulWidget {
  const CinemaxApp({super.key});

  @override
  State<CinemaxApp> createState() => _CinemaxAppState();
}

class _CinemaxAppState extends State<CinemaxApp> {
  @override
  void initState() {
    AppDependencyResolver.register();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => DependencyProvider.get<AuthBloc>(),
        ),
        BlocProvider<GenreListCubit>(
          create: (_) =>
              DependencyProvider.get<GenreListCubit>()..loadGenreList(),
        ),
        BlocProvider<PopularMoviesGenreCubit>(
            create: (_) => DependencyProvider.get<PopularMoviesGenreCubit>()
              ..loadPopularMovieGenre()),
        BlocProvider<SearchMovieCubit>(
          create: (_) => DependencyProvider.get<SearchMovieCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: darkTheme,
        darkTheme: darkTheme,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
