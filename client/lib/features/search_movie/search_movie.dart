import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/extension/font_weight_extension.dart';

import 'package:client/features/search_movie/cubit/search_movie_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class SearchMovie extends StatelessWidget {
  const SearchMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchMovieCubit, SearchMovieState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            itemCount: state.movie.movies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              state.movie.movies[index].posterPath!,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: context.spacerStyle.width),
                      SizedBox(
                        width: 200,
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.end,
                          children: [
                            Text(
                              state.movie.movies[index].title,
                              style: context.textStyle.h4.copyWith(
                                fontWeight: FontWeightStyle.semiBold.fontWeight,
                              ),
                            ),
                            if (state.movie.movies[index].releaseDate != null)
                              Row(
                                children: [
                                  Text(
                                    '',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(),
                                  ),
                                  Icon(
                                    CinemaxIcons.calendar,
                                    color: TextColor.grey,
                                    size: 18,
                                  ),
                                  SizedBox(
                                      width: context.spacerStyle.widthOnText),
                                  Text(
                                    state.movie.movies[index].releaseDate!.year
                                        .toString(),
                                    style: context.textStyle.h4.copyWith(
                                      color: TextColor.grey,
                                      fontWeight:
                                          FontWeightStyle.medium.fontWeight,
                                    ),
                                  ),
                                ],
                              ),
                            Row(
                              children: [
                                Icon(
                                  Icons.language,
                                  color: TextColor.grey,
                                  size: 18,
                                ),
                                SizedBox(
                                    width: context.spacerStyle.widthOnText),
                                Text(
                                  state.movie.movies[index].originalLanguage
                                      .toString(),
                                  style: context.textStyle.h4.copyWith(
                                    color: TextColor.grey,
                                    fontWeight:
                                        FontWeightStyle.medium.fontWeight,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  CinemaxIcons.star,
                                  color: SecondaryColor.orange,
                                  size: 18,
                                ),
                                SizedBox(
                                    width: context.spacerStyle.widthOnText),
                                Text(
                                  state.movie.movies[index].voteAverage!
                                      .toStringAsFixed(2),
                                  style: context.textStyle.h4.copyWith(
                                    color: TextColor.grey,
                                    fontWeight:
                                        FontWeightStyle.medium.fontWeight,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Movie',
                              style: context.textStyle.h4.copyWith(
                                color: TextColor.white,
                                fontWeight: FontWeightStyle.medium.fontWeight,
                              ),
                            ),
                            // BlocBuilder<GenreListCubit, GenreListState>(
                            //   builder: (context, genreState) {
                            //     final listGenre = getGenreNamesByIds(
                            //         state.movie.movies[index].genres!,
                            //         genreState.listGenre);
                            //     if (listGenre != null && listGenre.isNotEmpty) {
                            //       return SizedBox(
                            //         width: double.infinity,
                            //         height: 100,
                            //         child: ListView.separated(
                            //           scrollDirection: Axis.horizontal,
                            //           itemCount: listGenre.length,
                            //           itemBuilder: (context, indexGenre) {
                            //             return Text(
                            //               listGenre[indexGenre].name,
                            //               style: context.textStyle.h4.copyWith(
                            //                 color: TextColor.grey,
                            //                 fontWeight: FontWeightStyle
                            //                     .medium.fontWeight,
                            //                 overflow: TextOverflow.fade,
                            //               ),
                            //             );
                            //           },
                            //           separatorBuilder: (context, index) {
                            //             return Padding(
                            //               padding: const EdgeInsets.symmetric(
                            //                   horizontal: 5),
                            //               child: Text(
                            //                 '|',
                            //                 style: context.textStyle.h4,
                            //               ),
                            //             );
                            //           },
                            //         ),
                            //       );
                            //     }
                            //     return const SizedBox();
                            //   },
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
