import 'package:client/core/error/failure.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/search_movie/repositories/search_movie_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_movie_state.dart';
part 'search_movie_cubit.freezed.dart';

class SearchMovieCubit extends Cubit<SearchMovieState> {
  final SearchRepository _searchRepository;

  SearchMovieCubit({
    required SearchRepository searchRepository,
  })  : _searchRepository = searchRepository,
        super(SearchMovieState());

  void queryChanged(String query) {
    if (state.query == query) {
      return;
    }
    emit(
      state.copyWith(
        query: query,
      ),
    );
    _loadMovie();
  }

  Future<void> _loadMovie() async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final movieRecommendation =
        await _searchRepository.getMovie(query: state.query);

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
          movie: success,
          failure: null,
        ),
      ),
    );
  }
}
