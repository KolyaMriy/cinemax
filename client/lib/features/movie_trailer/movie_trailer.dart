import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/movie_trailer/cubit/movie_trailer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/component.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieTrailerScreen extends StatefulWidget {
  const MovieTrailerScreen({
    super.key,
    required this.movieId,
  });

  final int movieId;

  @override
  MovieTrailerScreenState createState() => MovieTrailerScreenState();
}

class MovieTrailerScreenState extends State<MovieTrailerScreen> {
  late YoutubePlayerController _controller;

  bool _isPlayerReady = true;
  bool _muted = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.black,
          appBar: CinemaxAppBar(
            backgroundColor: Colors.black,
            leading: CinemaxIcon(
              icon: CinemaxIcons.arrowBack,
              onTap: () => context.pop(),
            ),
          ),
        ),
        BlocProvider<MovieTrailerCubit>(
          create: (context) => DependencyProvider.get<MovieTrailerCubit>()
            ..loadMovieTrailer(movieId: widget.movieId),
          child: BlocBuilder<MovieTrailerCubit, MovieTrailerState>(
            builder: (context, state) {
              if (state.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              return Center(
                child: YoutubePlayer(
                  controller: _controller = YoutubePlayerController(
                    initialVideoId: state.movieTrailer.youtubeKey,
                    flags: YoutubePlayerFlags(
                      showLiveFullscreenButton: false,
                      autoPlay: _isPlayerReady,
                    ),
                  ),
                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(
                      isExpanded: true,
                      colors: ProgressBarColors(
                        handleColor: PrimaryColor.blueAccent,
                        playedColor: PrimaryColor.blueAccent,
                        bufferedColor: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            _muted ? Icons.volume_off : Icons.volume_up,
                            color: PrimaryColor.blueAccent,
                          ),
                          onPressed: () {
                            _muted = !_muted;
                            _muted ? _controller.unMute() : _controller.mute();
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            CinemaxIcons.fullscreen,
                            color: PrimaryColor.blueAccent,
                          ),
                          onPressed: () => _controller.toggleFullScreenMode(),
                        ),
                      ],
                    ),
                  ],
                  onReady: () {
                    _isPlayerReady = true;
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
