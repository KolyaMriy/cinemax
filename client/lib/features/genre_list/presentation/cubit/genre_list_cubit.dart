import 'package:client/core/failure/failure.dart';
import 'package:client/features/genre_list/domain/entity/genre_entity.dart';
import 'package:client/features/genre_list/domain/repositories/genre_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_list_state.dart';
part 'genre_list_cubit.freezed.dart';

class GenreListCubit extends Cubit<GenreListState> {
  final GenreRepositoryImpl _repository;
  GenreListCubit({
    required GenreRepositoryImpl repository,
  })  : _repository = repository,
        super(
          const GenreListState(),
        );
  Future<void> loadGenreList() async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final listGenre = await _repository.getGenreList();
    listGenre.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          listGenre: [],
          failure: failure,
        ),
      ),
      (success) {
        emit(
          state.copyWith(
            loading: false,
            listGenre: success.toList()..insert(0, GenreEntity.allGenre()),
            failure: null,
          ),
        );
      },
    );
  }
}
