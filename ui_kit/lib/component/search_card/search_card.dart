import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    this.onTap,
  });

  final SearchMovieCardModel listSearchMovie;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final style = context.searchMovieCardStyle;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: style.padding,
        child: SizedBox(
          height: style.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: style.height,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        listSearchMovie.posterPath,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: context.spacerStyle.width),
              Expanded(
                child: SizedBox(
                  width: style.width,
                  child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.end,
                      children: [
                        Text(
                          listSearchMovie.title,
                          style: context.textStyle.h4
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        if (listSearchMovie.releaseDate != null)
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
                                listSearchMovie.releaseDate!.year.toString(),
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
                              listSearchMovie.originalLanguage.toString(),
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
                              listSearchMovie.voteAverage!.toStringAsFixed(2),
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
                            color: TextColor.darkGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        if (listSearchMovie.genres != null)
                          SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, genreIndex) {
                                return Text(
                                  listSearchMovie.genres![genreIndex],
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
                              itemCount: listSearchMovie.genres!.length,
                            ),
                          )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
