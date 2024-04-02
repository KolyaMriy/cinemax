import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/config/router/app_router_name.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_actor/presentation/cubit/detail_actor_cubit.dart';
import 'package:client/features/movie/data/mappers/movie_card_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/component.dart';
import 'package:ui_kit/component/movie_card/movie_card.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class DetailActorScreen extends StatelessWidget {
  const DetailActorScreen({
    super.key,
    required this.actorID,
  });

  final int actorID;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailActorCubit>(
      create: (context) => DependencyProvider.get<DetailActorCubit>()
        ..loadActorDetail(actorID: actorID),
      child: Scaffold(
        appBar: CinemaxAppBar(
          leading: CinemaxIcon(
            icon: CinemaxIcons.arrowBack,
            onTap: () => context.pop(),
          ),
        ),
        body: BlocBuilder<DetailActorCubit, DetailActorState>(
          builder: (context, state) {
            if (state.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Center(
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Flexible(
                    flex: 4,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 250,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                  state.actor.image,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: context.spacerStyle.height),
                        Text(
                          state.actor.name,
                          style: context.textStyle.h2,
                        ),
                        SizedBox(height: context.spacerStyle.height),
                      ],
                    ),
                  ),
                  if (state.actor.alsoKnownAs != null)
                    Flexible(
                      flex: 5,
                      child: GridView.builder(
                        itemCount: state.actor.alsoKnownAs!.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 1.12),
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (context, index) {
                          final card = state.actor.alsoKnownAs![index].toCard();
                          return MovieCard(
                            onTap: () {
                              debugPrint(state.actor.alsoKnownAs![index].id
                                  .toString());
                              context.pushNamed(
                                AppRouterName.detailMovieName,
                                extra: state.actor.alsoKnownAs?[index].id,
                              );
                            },
                            cardModel: card,
                          );
                        },
                      ),
                    )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
