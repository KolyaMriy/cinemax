import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/features/detail_movie/cubit/detail_movie_cubit.dart';
import 'package:client/features/detail_movie/widgets/add_info_movie.dart';
import 'package:client/features/movie/movie_recommendations/movie_recommendations.dart';
import 'package:client/features/movie_trailer/movie_trailer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/component.dart';
import 'package:ui_kit/component/image/cinemax_image.dart';
import 'package:ui_kit/component/movie_card/movie_rating.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class DetailMovieScreen extends StatelessWidget {
  const DetailMovieScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailMovieCubit>(
      create: (context) => DependencyProvider.get<DetailMovieCubit>()
        ..loadDetailMovie(idMovie: id),
      child: BlocBuilder<DetailMovieCubit, DetailMovieState>(
        builder: (context, state) {
          if (state.loading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
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
                    imageUrl: state.movieDetail.posterPicture,
                  ),
                ),
              ),
              Scaffold(
                backgroundColor: Colors.transparent,
                appBar: CinemaxAppBar(
                  backgroundColor: Colors.transparent,
                  leading: CinemaxIcon(
                    icon: CinemaxIcons.arrowBack,
                    onTap: () => context.pop(),
                  ),
                  actionIcon: CinemaxIcon(
                    icon: CinemaxIcons.heart,
                    iconColor: SecondaryColor.red,
                    onTap: () {},
                  ),
                  titleText: state.movieDetail.title,
                ),
                body: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
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
                                      state.movieDetail.posterPicture),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: AddInfoMovie(
                            releaseDate:
                                state.movieDetail.releaseDate.year.toString(),
                            runtime: state.movieDetail.runtime.toString(),
                            genre: state.movieDetail.genres[0].name,
                          ),
                        ),
                        MovieRating(
                          alignment: Alignment.center,
                          backgroundColor: PrimaryColor.soft,
                          averageRating: state.movieDetail.voteAverage,
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
                              horizontal: 25, vertical: 10),
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
                            state.movieDetail.description,
                            style: context.textStyle.h5.copyWith(
                              overflow: TextOverflow.clip,
                              fontWeight: FontWeightStyle.regular.fontWeight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                          ),
                          child: Text(
                            'Trailer ${state.movieDetail.title}',
                            style: context.textStyle.h3.copyWith(
                              fontWeight: FontWeightStyle.semiBold.fontWeight,
                              color: TextColor.whiteGrey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 300,
                          child: state.showTrailer
                              ? MovieTrailerScreen(
                                  movieId: state.movieDetail.id,
                                )
                              : DecoratedBox(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                        state.movieDetail.backdropPicture,
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: CinemaxIcon(
                                      icon: Icons.play_arrow,
                                      iconColor: PrimaryColor.blueAccent,
                                      onTap: () => context
                                          .read<DetailMovieCubit>()
                                          .showTrailer(),
                                    ),
                                  ),
                                ),
                        ),
                        MovieRecommendations(
                          idMovie: id,
                          genre: state.movieDetail.genres,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
