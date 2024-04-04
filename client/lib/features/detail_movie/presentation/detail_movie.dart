import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/features/detail_movie/data/mappers/detail_movie_mapper.dart';
import 'package:client/features/detail_movie/movie_backdrops/presentation/movie_backdrops.dart';
import 'package:client/features/detail_movie/movie_credits/presentation/cast_list.dart';
import 'package:client/features/detail_movie/presentation/cubit/detail_movie_cubit.dart';
import 'package:client/features/detail_movie/presentation/widgets/add_info_movie.dart';
import 'package:client/features/detail_movie/presentation/widgets/list_genres_movie.dart';
import 'package:client/features/favorite_list/presentation/cubit/favorite_cubit.dart';
import 'package:client/features/movie/movie_recommendations/presentation/movie_recommendations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/component.dart';
import 'package:ui_kit/component/image/cinemax_image.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class DetailMovieScreen extends StatelessWidget {
  const DetailMovieScreen({
    super.key,
    required this.idMovie,
  });

  final int idMovie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailMovieCubit>(
      create: (context) => DependencyProvider.get<DetailMovieCubit>()
        ..loadDetailMovie(idMovie: idMovie),
      child: BlocBuilder<DetailMovieCubit, DetailMovieState>(
        builder: (context, state) {
          if (state.loading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state.movieDetail != null) {
            final movie = state.movieDetail!;
            return Stack(
              children: [
                Opacity(
                  opacity: 0.2,
                  child: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          PrimaryColor.dark.withOpacity(1),
                        ],
                      ),
                    ),
                    child: CinemaxImage(
                      imageUrl: movie.posterPicture,
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: CinemaxAppBar(
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    leading: CinemaxIcon(
                      icon: CinemaxIcons.arrowBack,
                      onTap: () => context.pop(),
                    ),
                    actionIcon: CinemaxIcon(
                      icon: CinemaxIcons.heart,
                      iconColor: state.isFavorite
                          ? SecondaryColor.red
                          : SecondaryColor.darkGrey,
                      onTap: () {
                        context.read<DetailMovieCubit>().addOrRemoveFavorite(
                              idMovie: idMovie,
                              movie: state.movieDetail!.toMovie(),
                            );
                        context.read<FavoriteCubit>().loadFavoriteMovie();
                      },
                    ),
                    titleText: movie.title,
                  ),
                  body: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: 200,
                              height: 300,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 20,
                                    blurRadius: 20,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    movie.posterPicture,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 30,
                            ),
                            child: AddInfoMovie(
                              releaseDate: movie.releaseDate.year,
                              runtime: movie.runtime,
                              rating: movie.voteAverage,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: IntrinsicWidth(
                              stepWidth: 100,
                              child: CinemaxFilledButton(
                                label: 'Buy Ticket',
                                color: SecondaryColor.orange,
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Genres',
                                  style: context.textStyle.h3,
                                ),
                                SizedBox(
                                  height: 40,
                                  width: double.maxFinite,
                                  child: ListMovieGenresMovie(
                                    genres: movie.genres,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 10,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Description',
                                style: context.textStyle.h3.copyWith(
                                    fontWeight:
                                        FontWeightStyle.semiBold.fontWeight),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              movie.description,
                              style: context.textStyle.h5.copyWith(
                                overflow: TextOverflow.clip,
                                fontWeight: FontWeightStyle.regular.fontWeight,
                              ),
                            ),
                          ),
                          SizedBox(height: context.spacerStyle.height),
                          BackdropsMovie(
                            idMovie: movie.id,
                          ),
                          SizedBox(height: context.spacerStyle.height),
                          CastList(idMovie: idMovie),
                          SizedBox(height: context.spacerStyle.height),
                          MovieRecommendations(
                            idMovie: idMovie,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          return Scaffold(
            body: Center(
              child: Text(
                'Фильм не найден',
                style: context.textStyle.h2,
              ),
            ),
          );
        },
      ),
    );
  }
}
