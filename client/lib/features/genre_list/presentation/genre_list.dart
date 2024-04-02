import 'package:client/features/genre_list/presentation/cubit/genre_list_cubit.dart';
import 'package:client/features/movie/popular_movie_genre/presentation/cubit/popular_movies_genre_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/component/genre_container/genre_container.dart';

class GenreList extends StatefulWidget {
  const GenreList({super.key});

  @override
  State<GenreList> createState() => _GenreListState();
}

int currentGenreIndex = 0;

class _GenreListState extends State<GenreList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreListCubit, GenreListState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.listGenre.isNotEmpty) {
          return SizedBox(
            height: 60,
            child: ListView.builder(
              itemCount: state.listGenre.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.read<PopularMoviesGenreCubit>().changeCurrentGenre(
                          genre: state.listGenre[index],
                        );
                    setState(
                      () {
                        if (currentGenreIndex != index) {
                          currentGenreIndex = index;
                        }
                      },
                    );
                  },
                  child: GenreContainer(
                    genre: state.listGenre[index].name,
                    isActive: currentGenreIndex == index,
                  ),
                );
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
