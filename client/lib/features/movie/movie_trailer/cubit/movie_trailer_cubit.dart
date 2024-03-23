import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/data/entity/youtube_trailer_entity.dart';
import 'package:client/features/movie/data/repository/movie_trailer/movie_trailer_repository_impl.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_trailer_state.dart';
part 'movie_trailer_cubit.freezed.dart';

class MovieTrailerCubit extends Cubit<MovieTrailerState> {
  MovieTrailerCubit({required MovieTrailerRepositoryImpl repository})
      : _repository = repository,
        super(MovieTrailerState(movieTrailer: YouTubeTrailerEntity.empty()));

  final MovieTrailerRepositoryImpl _repository;

  Future<void> loadMovieTrailer({required int movieId}) async {
    emit(state.copyWith(loading: true));
    final listPopularMovieGenre =
        await _repository.getMovieTrailer(id: movieId);
    listPopularMovieGenre.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
      (success) => emit(
        state.copyWith(
          loading: false,
          movieTrailer: success,
          failure: null,
        ),
      ),
    );
  }

  @Deprecated('Not Working')
  void playOrStop() {
    emit(state.copyWith(startPlayer: !state.startPlayer));
  }

  @Deprecated('Not Working')
  void muteOrUnMute() {
    emit(state.copyWith(mute: !state.mute));
  }
}
