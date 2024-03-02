import 'package:flutter/material.dart';
import 'package:ui_kit/component/movie_card/movie_card.dart';
import 'package:ui_kit/component/movie_card/movie_card_model.dart';

class PopularMovieGenre extends StatelessWidget {
  PopularMovieGenre({super.key});

  final list = [
    MovieCardModel(
        posterPicture:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://image.tmdb.org/t/p/w500//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg',
        averageRating: 9.8,
        title: 'Legend'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return MovieCard(cardModel: list[index]);
          }),
    );
  }
}
