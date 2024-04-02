import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/config/router/app_router_name.dart';
import 'package:client/features/detail_movie/movie_credits/presentation/cubit/movie_credits_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/theme/color_scheme.dart';

import 'package:ui_kit/theme/theme_context_extension.dart';

class CastList extends StatelessWidget {
  const CastList({
    super.key,
    required this.idMovie,
  });

  final int idMovie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieCreditsCubit>(
      create: (_) => DependencyProvider.get<MovieCreditsCubit>()
        ..loadMovieCredits(idMovie: idMovie),
      child: BlocBuilder<MovieCreditsCubit, MovieCreditsState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.credits.cast.isNotEmpty) {
            return SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.credits.cast.length,
                itemBuilder: (context, index) {
                  final actors = state.credits.cast[index];
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          AppRouterName.detailActorName,
                          extra: actors.id,
                        );
                      },
                      child: SizedBox(
                        width: 120,
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: PrimaryColor.soft,
                              radius: 50,
                              foregroundImage: CachedNetworkImageProvider(
                                actors.image,
                              ),
                            ),
                            Text(
                              actors.name,
                              style: context.textStyle.h4,
                            ),
                            if (actors.character != '')
                              Text(
                                actors.character,
                                style: context.textStyle.h4.copyWith(
                                  color: TextColor.grey,
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
