import 'package:client/core/error/failure.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/movie_recommendations/repositories/movie_recommendations_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_recommendation_state.dart';
part 'movie_recommendation_cubit.freezed.dart';

class MovieRecommendationCubit extends Cubit<MovieRecommendationState> {
  final MovieRecommendationRepository _repository;
  MovieRecommendationCubit({required MovieRecommendationRepository repository})
      : _repository = repository,
        super(
          MovieRecommendationState(
              movieRecommendations: ListMovieEntity.empty()),
        );

  Future<void> loadMovieRecommendation({required int idMovie}) async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final movieRecommendation =
        await _repository.getMovieRecommendation(idMovie: idMovie);

    movieRecommendation.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
      (success) => emit(
        state.copyWith(
          loading: false,
          movieRecommendations: success,
          failure: null,
        ),
      ),
    );
  }
}
