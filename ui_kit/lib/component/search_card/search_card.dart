import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class SearchMovieCardModel {
  final String posterPath;
  final String title;
  final DateTime? releaseDate;
  final String? originalLanguage;
  final double? voteAverage;
  final List<String>? genres;

  SearchMovieCardModel({
    this.genres,
    this.voteAverage,
    required this.originalLanguage,
    this.releaseDate,
    required this.posterPath,
    required this.title,
  });
}

class SearchMovieCard extends StatelessWidget {
  const SearchMovieCard({
    super.key,
    required this.listSearchMovie,
  });

  final List<SearchMovieCardModel> listSearchMovie;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listSearchMovie.length,
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
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        listSearchMovie[index].posterPath,
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
                          listSearchMovie[index].title,
                          style: context.textStyle.h4
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        if (listSearchMovie[index].releaseDate != null)
                          Row(
                            children: [
                              const Text(
                                '',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(),
                              ),
                              Icon(
                                CinemaxIcons.calendar,
                                color: TextColor.grey,
                                size: 18,
                              ),
                              SizedBox(width: context.spacerStyle.widthOnText),
                              Text(
                                listSearchMovie[index]
                                    .releaseDate!
                                    .year
                                    .toString(),
                                style: context.textStyle.h4.copyWith(
                                  color: TextColor.grey,
                                  fontWeight: FontWeight.w500,
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
                            SizedBox(width: context.spacerStyle.widthOnText),
                            Text(
                              listSearchMovie[index]
                                  .originalLanguage
                                  .toString(),
                              style: context.textStyle.h4.copyWith(
                                color: TextColor.grey,
                                fontWeight: FontWeight.w500,
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
                            SizedBox(width: context.spacerStyle.widthOnText),
                            Text(
                              listSearchMovie[index]
                                  .voteAverage!
                                  .toStringAsFixed(2),
                              style: context.textStyle.h4.copyWith(
                                color: TextColor.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Movie',
                          style: context.textStyle.h4.copyWith(
                            color: TextColor.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        if (listSearchMovie[index].genres != null)
                          SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, genreIndex) {
                                return Text(
                                  listSearchMovie[index].genres![genreIndex],
                                  style: context.textStyle.h4.copyWith(
                                    color: TextColor.grey,
                                    fontWeight: FontWeight.w500,
                                    overflow: TextOverflow.fade,
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => Text(
                                ' | ',
                                style: context.textStyle.h4,
                              ),
                              itemCount: listSearchMovie[index].genres!.length,
                            ),
                          )
                      ]),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
