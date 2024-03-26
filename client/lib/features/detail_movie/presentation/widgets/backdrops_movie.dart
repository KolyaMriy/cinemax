// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:client/core/router/app_router_name.dart';
// import 'package:client/features/detail_movie/movie_backdrops/data/entity/backdrops_movie_entity.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:ui_kit/component/icon/cinemax_icon.dart';
// import 'package:ui_kit/theme/color_scheme.dart';

// class BackdropsMovie extends StatelessWidget {
//   const BackdropsMovie({
//     super.key,
//     required this.backdrops,
//     required this.movieId,
//   });

//   final List<BackdropMoviesEntity> backdrops;
//   final int movieId;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 150,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: backdrops.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               width: 250,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: CachedNetworkImageProvider(
//                     backdrops[index].image,
//                   ),
//                 ),
//               ),
//               child: index == 0
//                   ? Center(
//                       child: CinemaxIcon(
//                         icon: Icons.play_arrow,
//                         iconColor: PrimaryColor.blueAccent,
//                         onTap: () => context.pushNamed(
//                           AppRouterName.trailerMovieName,
//                           extra: movieId,
//                         ),
//                       ),
//                     )
//                   : const SizedBox(),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
