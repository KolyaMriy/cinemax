import 'package:client/core/extension/font_weight_extension.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class AddInfoMovie extends StatelessWidget {
  const AddInfoMovie(
      {super.key,
      required this.releaseDate,
      required this.runtime,
      required this.genre});

  final String releaseDate;
  final String runtime;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 5,
      children: [
        Wrap(
          spacing: 5,
          children: [
            Icon(Icons.calendar_month, color: TextColor.grey),
            Text(
              releaseDate,
              style: context.textStyle.h4.copyWith(
                color: TextColor.grey,
                fontWeight: FontWeightStyle.medium.fontWeight,
              ),
            )
          ],
        ),
        Text(
          '|',
          style: context.textStyle.h4.copyWith(
            color: TextColor.grey,
            fontWeight: FontWeightStyle.medium.fontWeight,
          ),
        ),
        Wrap(
          spacing: 5,
          children: [
            Icon(CinemaxIcons.clock, color: TextColor.grey),
            Text(
              '$runtime Minutes',
              style: context.textStyle.h4.copyWith(
                color: TextColor.grey,
                fontWeight: FontWeightStyle.medium.fontWeight,
              ),
            )
          ],
        ),
        Text(
          '|',
          style: context.textStyle.h4.copyWith(
            color: TextColor.grey,
            fontWeight: FontWeightStyle.medium.fontWeight,
          ),
        ),
        Wrap(
          spacing: 5,
          children: [
            Icon(CinemaxIcons.film, color: TextColor.grey),
            Text(
              genre,
              style: context.textStyle.h4.copyWith(
                color: TextColor.grey,
                fontWeight: FontWeightStyle.medium.fontWeight,
              ),
            )
          ],
        )
      ],
    );
  }
}
