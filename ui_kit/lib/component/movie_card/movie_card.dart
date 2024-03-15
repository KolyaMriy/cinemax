import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/assets/images/images_assets.dart';
import 'package:ui_kit/component/movie_card/movie_card_model.dart';
import 'package:ui_kit/component/movie_card/movie_rating.dart';
import 'package:ui_kit/theme/color_scheme.dart';
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
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 30,
          decoration: BoxDecoration(
            color: PrimaryColor.soft.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: IntrinsicWidth(
            child: SizedBox(
              width: 150,
              child: Column(
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        onError: (exception, stackTrace) => Image.asset(
                          ImageAssets.cinemaxLogo,
                          package: 'ui_kit',
                        ),
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          cardModel.posterPicture,
                        ),
                      ),
                    ),
                    child: cardModel.averageRating != 0.0
                        ? MovieRating(
                            averageRating: cardModel.averageRating,
                          )
                        : const SizedBox(),
                  ),
                  ListTile(
                    title: Text(
                      cardModel.title,
                      style: context.textStyle.h5.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
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
                                  style: context.textStyle.h5.copyWith(
                                    color: TextColor.grey,
                                    overflow: TextOverflow.ellipsis,
                                  ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
