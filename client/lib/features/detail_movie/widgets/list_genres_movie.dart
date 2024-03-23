import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class ListMovieGenresMovie extends StatelessWidget {
  const ListMovieGenresMovie({super.key, required this.genres});

  final List<GenreEntity> genres;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: genres.length,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CinemaxIcons.film, color: TextColor.grey),
            Text(
              genres[index].name,
              style: context.textStyle.h4.copyWith(
                color: TextColor.grey,
                fontWeight: FontWeightStyle.medium.fontWeight,
              ),
            )
          ],
        );
      },
      separatorBuilder: (context, index) => Text(
        '|',
        style: context.textStyle.h4.copyWith(
          color: TextColor.grey,
          fontWeight: FontWeightStyle.medium.fontWeight,
        ),
      ),
    );
  }
}
