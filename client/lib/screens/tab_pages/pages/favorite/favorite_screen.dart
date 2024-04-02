import 'package:client/features/favorite_list/presentation/cubit/favorite_cubit.dart';
import 'package:client/features/favorite_list/presentation/favorite_movie_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/component/component.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CinemaxAppBar(
            titleText: 'Favorite Movie',
            action: GestureDetector(
              onTap: () => context.read<FavoriteCubit>().toggleEditList(),
              child: Text(
                state.isEditList ? 'Ok' : 'Change',
                style: context.textStyle.h4.copyWith(
                  color: PrimaryColor.blueAccent,
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: _buildBody(context, state, state.isEditList),
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, FavoriteState state, bool isChange) {
    if (state.failure != null) {
      return Center(
        child: Text(
          'Error: ${state.failure.toString()}',
          style: context.textStyle.h4.copyWith(
            color: SecondaryColor.orange,
          ),
        ),
      );
    }
    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state.movies.isNotEmpty) {
      return FavoriteMovieList(
        favoriteMovies: state.movies,
        isChange: isChange,
      );
    } else {
      return Container();
    }
  }
}
