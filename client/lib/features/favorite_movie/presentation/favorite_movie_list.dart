import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/favorite_movie/presentation/cubit/favorite_cubit.dart';
import 'package:client/features/movie/data/mappers/movie_card_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/component.dart';
import 'package:ui_kit/component/movie_card/movie_card.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class FavoriteMovieList extends StatelessWidget {
  const FavoriteMovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.movies.isEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Spacer(),
                Center(
                  child: Text(
                    'Favorite List Is empty',
                    style: context.textStyle.h1,
                  ),
                ),
                const Spacer(),
                CinemaxOutlinedButton(
                  label: 'Add Movie',
                  onPressed: () {
                    context.goNamed(AppRouterName.homeName);
                  },
                ),
                const Spacer(),
              ],
            ),
          );
        }
        if (state.movies.isNotEmpty) {
          return SizedBox(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.12),
                crossAxisCount: 3,
              ),
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                final movie = state.movies[index];
                final cardMovie = movie.movie.toCard();
                return MovieCard(
                  cardModel: cardMovie,
                  onTap: () {
                    context.pushNamed(
                      AppRouterName.detailMovieName,
                      extra: movie.movie.id,
                    );
                  },
                );
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
