import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/movie/data/mappers/poster_movie_mapper.dart';
import 'package:client/features/movie/new_movie_list/presentation/cubit/new_movie_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/poster_movie/poster_movie.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class NewMovieList extends StatelessWidget {
  const NewMovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewMovieListCubit>(
      create: (_) =>
          DependencyProvider.get<NewMovieListCubit>()..loadNewMovieList(),
      child: BlocBuilder<NewMovieListCubit, NewMovieListState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.failure != null) {
            return Center(
              child: Text(
                state.failure.toString(),
                style: context.textStyle.h3,
              ),
            );
          }
          if (state.listNewMovie.movies.isNotEmpty) {
            return CarouselSlider.builder(
                options: CarouselOptions(
                  enlargeFactor: 0.1,
                  autoPlay: true,
                  height: 180,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayInterval: const Duration(seconds: 10),
                ),
                itemCount: state.listNewMovie.movies.length,
                itemBuilder: (context, index, realIndex) {
                  return PosterMovie(
                    onTap: () => context.pushNamed(
                        AppRouterName.detailMovieName,
                        extra: state.listNewMovie.movies[index].id),
                    posterMovie: state.listNewMovie.movies[index].toPoster(),
                  );
                });
          }
          return const SizedBox();
        },
      ),
    );
  }
}
