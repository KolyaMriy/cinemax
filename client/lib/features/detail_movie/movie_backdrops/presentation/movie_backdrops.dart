import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/config/router/app_router_name.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_movie/movie_backdrops/presentation/cubit/movie_backdrops_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/icon/cinemax_icon.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class BackdropsMovie extends StatelessWidget {
  const BackdropsMovie({
    super.key,
    required this.idMovie,
  });

  final int idMovie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieBackdropsCubit>(
      create: (_) => DependencyProvider.get<MovieBackdropsCubit>()
        ..loadBackdropsMovie(idMovie: idMovie),
      child: BlocBuilder<MovieBackdropsCubit, MovieBackdropsState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.backdrops.isNotEmpty) {
            return SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.backdrops.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            state.backdrops[index].image,
                          ),
                        ),
                      ),
                      child: index == 0
                          ? Center(
                              child: CinemaxIcon(
                                icon: Icons.play_arrow,
                                iconColor: PrimaryColor.blue500,
                                onTap: () => context.pushNamed(
                                  AppRouterName.trailerMovieName,
                                  extra: idMovie,
                                ),
                              ),
                            )
                          : const SizedBox(),
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
