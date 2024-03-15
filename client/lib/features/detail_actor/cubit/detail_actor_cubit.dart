import 'package:bloc/bloc.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/detail_actor/data/entity/detail_actor_entity.dart';
import 'package:client/features/detail_actor/data/repository/detail_actor_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_actor_cubit.freezed.dart';
part 'detail_actor_state.dart';

class DetailActorCubit extends Cubit<DetailActorState> {
  final DetailActorRepository _repository;

  DetailActorCubit({required DetailActorRepository repository})
      : _repository = repository,
        super(DetailActorState(actor: DetailActorEntity.empty()));

  Future<void> loadActorDetail({required int idMovie}) async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final listNewMovie = await _repository.getDetailActor(id: idMovie);
    listNewMovie.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
      (success) => emit(
        state.copyWith(
          loading: false,
          actor: success,
          failure: null,
        ),
      ),
    );
  }
}
