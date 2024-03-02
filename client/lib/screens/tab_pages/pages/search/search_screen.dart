import 'package:client/features/search_movie/cubit/search_movie_cubit.dart';
import 'package:client/features/search_movie/search_movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/input_field/input_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              InputField(
                prefixIcon: CinemaxIcons.search,
                placeHolder: 'Type title,categories,year,etc',
                onChanged: (query) =>
                    context.read<SearchMovieCubit>().queryChanged(query),
              ),
              const SearchMovie(),
            ],
          ),
        ),
      ),
    );
  }
}
