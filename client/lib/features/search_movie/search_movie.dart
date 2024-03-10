import 'package:client/features/movie/data/mappers/search_movie_card_mapper.dart';
import 'package:client/features/search_movie/cubit/search_movie_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/component/search_card/search_card.dart';

class SearchMovie extends StatelessWidget {
  const SearchMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchMovieCubit, SearchMovieState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        final listSearchMovie = <SearchMovieCardModel>[];
        for (final movie in state.movie.movies) {
          listSearchMovie.add(movie.toSearchCard());
        }
        return SearchMovieCard(
          listSearchMovie: listSearchMovie,
        );
      },
    );
  }
}
