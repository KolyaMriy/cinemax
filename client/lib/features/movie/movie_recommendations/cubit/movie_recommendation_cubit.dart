import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie/data/data_sources/remote/movie_recommendations/movie_remote_datasource_impl.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_recommendation_state.dart';
part 'movie_recommendation_cubit.freezed.dart';

class MovieRecommendationCubit extends Cubit<MovieRecommendationState> {
  final MovieRecommendationRemoteDataSourceImpl _repository;
  MovieRecommendationCubit({
    required MovieRecommendationRemoteDataSourceImpl repository,
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
