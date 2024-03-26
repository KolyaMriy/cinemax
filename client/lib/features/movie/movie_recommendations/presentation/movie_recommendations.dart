import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/movie/data/mappers/movie_card_mapper.dart';
import 'package:client/features/movie/movie_recommendations/presentation/cubit/movie_recommendation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/movie_card/movie_card.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class MovieRecommendations extends StatelessWidget {
  const MovieRecommendations({
    super.key,
    required this.idMovie,
  });

  final int idMovie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieRecommendationCubit>(
      create: (context) => DependencyProvider.get<MovieRecommendationCubit>()
        ..loadMovieRecommendation(idMovie: idMovie),
      child: BlocBuilder<MovieRecommendationCubit, MovieRecommendationState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.movieRecommendations.movies.isNotEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    'Recommendations',
                    style: context.textStyle.h3.copyWith(
                      fontWeight: FontWeightStyle.medium.fontWeight,
                      color: TextColor.whiteGrey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                      itemCount: state.movieRecommendations.movies.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final card = state.movieRecommendations.movies[index]
                            .toCard()
                          ..genres = state
                              .movieRecommendations.movies[index].genres
                              ?.map((genre) => genre.name)
                              .toList();
                        return MovieCard(
                          onTap: () {
                            context.pushNamed(
                              AppRouterName.detailMovieName,
                              extra:
                                  state.movieRecommendations.movies[index].id,
                            );
                          },
                          cardModel: card,
                        );
                      }),
                ),
              ],
            );
          }
          return const SizedBox(height: 50);
        },
      ),
    );
  }
}
