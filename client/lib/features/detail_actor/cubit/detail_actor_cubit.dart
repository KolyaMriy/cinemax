import 'package:bloc/bloc.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_actor/data/entity/detail_actor_entity.dart';
import 'package:client/features/detail_actor/data/repository/detail_actor_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_actor_cubit.freezed.dart';
part 'detail_actor_state.dart';

class DetailActorCubit extends Cubit<DetailActorState> {
  final DetailActorRepositoryImpl _repository;

  DetailActorCubit({required DetailActorRepositoryImpl repository})
      : _repository = repository,
        super(DetailActorState(actor: DetailActorEntity.empty()));

  Future<void> loadActorDetail({required int actorID}) async {
    if (state.loading != true) {
      emit(state.copyWith(loading: true));
    }
    final isDateSaved = await _repository.isSavedDetailActor(actorID: actorID);
    if (isDateSaved) {
      debugPrint('actor load by localDB');
      final actor = await _repository.getLocalDetailActor(actorID: actorID);
      actor.fold(
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
    } else {
      debugPrint('actor load by remoteAPI');
      final actor = await _repository.getRemoteDetailActor(actorID: actorID);
      actor.fold(
          (failure) => emit(
                state.copyWith(
                  loading: false,
                  failure: failure,
                ),
              ), (success) {
        emit(
          state.copyWith(
            loading: false,
            actor: success,
            failure: null,
          ),
        );
        _repository.saveDetailActor(detailActor: success);
      });
    }
  }
}
