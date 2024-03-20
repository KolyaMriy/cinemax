import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/repository/movie_recommendation_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_recommendation_state.dart';
part 'movie_recommendation_cubit.freezed.dart';

class MovieRecommendationCubit extends Cubit<MovieRecommendationState> {
  final MovieRecommendationRepositoryImpl _repository;
  MovieRecommendationCubit({
    required MovieRecommendationRepositoryImpl repository,
  })  : _repository = repository,
        super(
          MovieRecommendationState(
            movieRecommendations: ListMovieEntity.empty(),
          ),
        );

  Future<void> loadMovieRecommendation({required int idMovie}) async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final getSavedMovieRecommendation =
        _repository.getSavedMovieRecommendation(index: idMovie);
    await getSavedMovieRecommendation.fold(
      (failure) async {
        final movieRecommendation =
            await _repository.getMovieRecommendation(index: idMovie);

        movieRecommendation.fold(
          (failure) => emit(
            state.copyWith(
              loading: false,
              failure: failure,
            ),
          ),
          (movieApi) async {
            debugPrint('load recomendation Movie remote API');
            emit(
              state.copyWith(
                loading: false,
                movieRecommendations: movieApi,
                failure: null,
              ),
            );
            await _repository.saveMovieRecommendation(
                movieRecommendation: movieApi, index: idMovie);
          },
        );
      },
      (savedMovie) {
        debugPrint('load recomendation Movie by localDB');
        emit(
          state.copyWith(
            loading: false,
            movieRecommendations: savedMovie,
          ),
        );
      },
    );
  }
}
