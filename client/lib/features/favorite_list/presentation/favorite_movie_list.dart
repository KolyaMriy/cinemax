import 'package:client/config/router/app_router_name.dart';
import 'package:client/features/favorite_list/domain/entity/favorite_movie_entity.dart';
import 'package:client/features/favorite_list/presentation/cubit/favorite_cubit.dart';
import 'package:client/features/movie/data/mappers/movie_card_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/movie_card/movie_card.dart';

class FavoriteMovieList extends StatelessWidget {
  const FavoriteMovieList({
    super.key,
    required this.favoriteMovies,
    required this.isChange,
  });

  final List<FavoriteMovieEntity> favoriteMovies;
  final bool isChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.12),
          crossAxisCount: 3,
        ),
        itemCount: favoriteMovies.length,
        itemBuilder: (context, index) {
          final movie = favoriteMovies[index];
          final cardMovie = movie.movie.toCard();
          return Stack(
            fit: StackFit.expand,
            children: [
              MovieCard(
                cardModel: cardMovie,
                onTap: () {
                  context.pushNamed(
                    AppRouterName.detailMovieName,
                    extra: movie.movie.id,
                  );
                },
              ),
              if (isChange)
                Positioned(
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      context.read<FavoriteCubit>().removeMovie(
                            idMovie: movie.movie.id,
                          );
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 15,
                      child: Icon(
                        size: 20,
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
            ],
          );
        },
      ),
    );
  }
}
