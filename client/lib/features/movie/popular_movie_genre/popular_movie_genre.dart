import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/movie/data/mappers/movie_card_mapper.dart';
import 'package:client/features/movie/popular_movie_genre/cubit/popular_movies_genre_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/movie_card/movie_card.dart';

class PopularMovieGenre extends StatelessWidget {
  const PopularMovieGenre({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesGenreCubit, PopularMoviesGenreState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.listPopularGenreMovie.movies.isNotEmpty) {
          return SizedBox(
            height: 280,
            child: ListView.builder(
                itemCount: state.listPopularGenreMovie.movies.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final card = state.listPopularGenreMovie.movies[index]
                      .toCard()
                    ..genre = state.currentGenre.name;
                  return MovieCard(
                    cardModel: card,
                    onTap: () => context.goNamed(AppRouterName.detailMovieName,
                        extra: state.listPopularGenreMovie.movies[index].id),
                  );
                }),
          );
        }
        return const SizedBox();
      },
    );
  }
}
