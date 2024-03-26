part of 'detail_actor_cubit.dart';

@freezed
class DetailActorState with _$DetailActorState {
  factory DetailActorState({
    required DetailActorEntity actor,
    Failure? failure,
    @Default(false) bool loading,
  }) = _DetailActorState;
}
