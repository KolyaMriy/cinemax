import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/poster_movie/poster_movie.dart';
import 'package:ui_kit/component/poster_movie/poster_movie_model.dart';

class NewMovieList extends StatelessWidget {
  NewMovieList({super.key});

  final list = [
    PosterMovieModel(
        title: 'Test',
        backdropPath:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        release: '12.12.2023'),
    PosterMovieModel(
        title: 'Test',
        backdropPath:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        release: '12.12.2023'),
    PosterMovieModel(
        title: 'Test',
        backdropPath:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        release: '12.12.2023'),
    PosterMovieModel(
        title: 'Test',
        backdropPath:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        release: '12.12.2023'),
    PosterMovieModel(
        title: 'Test',
        backdropPath:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        release: '12.12.2023'),
    PosterMovieModel(
        title: 'Test',
        backdropPath:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        release: '12.12.2023'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            options: CarouselOptions(
              enlargeFactor: 0.1,
              autoPlay: true,
              enlargeCenterPage: true,
              height: 180.0,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlayInterval: const Duration(seconds: 10),
            ),
            itemCount: list.length,
            itemBuilder: (context, index, realIndex) {
              return PosterMovie(
                posterMovie: list[index],
              );
            }),
      ],
    );
  }
}
