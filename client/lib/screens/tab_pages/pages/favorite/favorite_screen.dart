import 'package:client/features/favorite_movie/presentation/favorite_movie_list.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: FavoriteMovieList(),
      ),
    );
  }
}
