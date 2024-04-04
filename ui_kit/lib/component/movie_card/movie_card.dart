import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/movie_card/movie_card_model.dart';
import 'package:ui_kit/component/movie_card/movie_rating.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.cardModel,
    this.onTap,
  });

  final MovieCardModel cardModel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final style = context.movieCardStyle;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: style.padding,
        child: Container(
          height: 30,
          decoration: BoxDecoration(
            color: style.backgroundColor,
            borderRadius: style.borderRadius,
          ),
          child: SizedBox(
            width: 150,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          cardModel.posterPicture,
                        ),
                      ),
                    ),
                    child: MovieRating(
                      averageRating: cardModel.averageRating,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      cardModel.title,
                      style: style.titleStyle,
                    ),
                    subtitle: cardModel.genres != null
                        ? SizedBox(
                            width: double.infinity,
                            height: 20,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Text(
                                  cardModel.genres![index].toString(),
                                  style: style.genreStyle,
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const Text(' | ');
                              },
                              itemCount: cardModel.genres!.length,
                            ),
                          )
                        : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
