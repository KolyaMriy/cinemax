import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/movie/data/mappers/poster_movie_mapper.dart';
import 'package:client/features/movie/new_movie_list/cubit/new_movie_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/poster_movie/poster_movie.dart';

class NewMovieList extends StatelessWidget {
  const NewMovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewMovieListCubit>(
      create: (_) =>
          DependencyProvider.get<NewMovieListCubit>()..loadNewMovieList(),
      child: BlocBuilder<NewMovieListCubit, NewMovieListState>(
        buildWhen: (oldState, newState) =>
            oldState.listNewMovie != newState.listNewMovie,
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.listNewMovie.movies.isNotEmpty) {
            return Column(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                      enlargeFactor: 0.1,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      height: 180.0,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      autoPlayInterval: const Duration(seconds: 10),
                    ),
                    itemCount: state.listNewMovie.movies.length,
                    itemBuilder: (context, index, realIndex) {
                      return PosterMovie(
                        onTap: () => context.goNamed(
                            AppRouterName.detailMovieName,
                            extra: state.listNewMovie.movies[index].id),
                        posterMovie:
                            state.listNewMovie.movies[index].toPoster(),
                      );
                    }),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
