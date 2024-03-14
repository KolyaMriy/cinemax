import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/movie/data/mappers/search_movie_card_mapper.dart';
import 'package:client/features/search_movie/cubit/search_movie_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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
        return ListView.builder(
          itemCount: state.listSearchMovies.movies.length,
          itemBuilder: (context, index) {
            return SearchMovieCard(
              onTap: () => context.pushNamed(AppRouterName.detailMovieName,
                  extra: state.listSearchMovies.movies[index].id),
              listSearchMovie:
                  state.listSearchMovies.movies[index].toSearchCard(),
            );
          },
        );
      },
    );
  }
}
