import 'package:bloc/bloc.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/movie_credits/data/entity/credits_entity.dart';
import 'package:client/features/detail_movie/movie_credits/repository/credits_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_credits_state.dart';
part 'movie_credits_cubit.freezed.dart';

class MovieCreditsCubit extends Cubit<MovieCreditsState> {
  final CreditsRepositoryImpl _repository;
  MovieCreditsCubit({
    required CreditsRepositoryImpl repository,
  })  : _repository = repository,
        super(MovieCreditsState(credits: CreditsEntity.empty()));

  Future<void> loadMovieCredits({required int idMovie}) async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final creditsMovie = await _repository.getCredits(idMovie: idMovie);
    creditsMovie.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
      (credits) => emit(
        state.copyWith(
          loading: false,
          credits: credits,
          failure: null,
        ),
      ),
    );
  }
}
