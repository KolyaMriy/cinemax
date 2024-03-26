import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/domain/entity/list_movie.dart';
import 'package:client/features/movie/domain/repository/movie_recommendation/movie_recommendation_repository_impl.dart';
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
    final getMovieRecommendation =
        await _repository.getMovieRecommendation(index: idMovie);
    getMovieRecommendation.fold(
      (failure) async => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
      (movies) => emit(
        state.copyWith(
          loading: false,
          movieRecommendations: movies,
        ),
      ),
    );
  }
}
