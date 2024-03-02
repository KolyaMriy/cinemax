import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:client/features/genre_list/genre_list.dart';
import 'package:client/features/movie/new_movie_list/new_movie_list.dart';
import 'package:client/features/movie/popular_movie_genre/popular_movie_genre.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/avatar/avatar.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.user.isNotEmpty) {
          return Scaffold(
            appBar: CinemaxAppBar(
              leading: Avatar(
                photoUrl: state.user.photoUrl,
              ),
              centerTitle: false,
              titleText: 'Hello, ${state.user.email}',
              subTitle: 'Let’s stream your favorite movie',
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: context.spacerStyle.height),
                  const NewMovieList(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                              fontWeight: FontWeightStyle.semiBold.fontWeight,
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
                              fontWeight: FontWeightStyle.semiBold.fontWeight,
                            ),
                          ),
                        ),
                        const PopularMovieGenre()
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
