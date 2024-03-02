import 'package:flutter/material.dart';
import 'package:storybook/pages/home/widgets/genre_list.dart';
import 'package:storybook/pages/home/widgets/movie_list.dart';
import 'package:storybook/pages/home/widgets/popular_movie_genre.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/avatar/avatar.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CinemaxAppBar(
        leading: Avatar(
          photoUrl: '',
        ),
        centerTitle: false,
        titleText: 'Hello, kolyamriy16@gmail.com',
        subTitle: 'Let’s stream your favorite movie',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35),
            NewMovieList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Text(
                      'Genre Movie',
                      style: context.textStyle.h4.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const GenreList(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Text(
                      'Most Popular in Genre',
                      style: context.textStyle.h4.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  PopularMovieGenre()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
