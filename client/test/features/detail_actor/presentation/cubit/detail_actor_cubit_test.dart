import 'package:bloc_test/bloc_test.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_actor/domain/entity/detail_actor_entity.dart';
import 'package:client/features/detail_actor/presentation/cubit/detail_actor_cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/test_helpers.mocks.dart';

void main() {
  late DetailActorCubit detailActorCubit;
  late MockDetailActorRepositoryImpl repository;

  setUp(() {
    repository = MockDetailActorRepositoryImpl();
    detailActorCubit = DetailActorCubit(repository: repository);
  });

  const testActorID = 143;

  final testDetailActor = DetailActorEntity(
    id: testActorID,
    name: 'Alex',
    biography: 'actor biography',
    image: 'image.png',
    alsoKnownAs: const [],
    birthday: DateTime(00, 00, 0000),
  );

  test('initial state should be empty', () {
    expect(DetailActorState(), DetailActorState());
  });

  blocTest<DetailActorCubit, DetailActorState>(
    'should emit [loading == true, actorDetail == testDetailActor] ',
    build: () {
      when(repository.getRemoteDetailActor(actorID: testActorID))
          .thenAnswer((_) async => right(testDetailActor));
      return detailActorCubit;
    },
    act: (cubit) => cubit.loadActorDetail(actorID: testActorID),
    expect: () => [
      DetailActorState(loading: true),
      DetailActorState(actor: testDetailActor),
    ],
  );

  blocTest<DetailActorCubit, DetailActorState>(
    'should emit [failure internet connection] when loadGenreList is called',
    build: () {
      when(repository.getRemoteDetailActor(actorID: testActorID))
          .thenAnswer((_) async => const Left(Failure.noInternetConnection()));
      return detailActorCubit;
    },
    act: (cubit) => cubit.loadActorDetail(actorID: testActorID),
    expect: () => [
      DetailActorState(loading: true),
      DetailActorState(failure: const Failure.noInternetConnection()),
    ],
  );
}
