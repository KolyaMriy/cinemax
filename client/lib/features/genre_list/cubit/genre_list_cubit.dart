import 'package:client/core/error/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/genre_list/data/repositories/genre_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_list_state.dart';
part 'genre_list_cubit.freezed.dart';

class GenreListCubit extends Cubit<GenreListState> {
  final GenreRepository _repository;
  GenreListCubit({required GenreRepository repository})
      : _repository = repository,
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
