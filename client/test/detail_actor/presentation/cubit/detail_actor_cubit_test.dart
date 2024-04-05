import 'package:bloc_test/bloc_test.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_actor/domain/entity/detail_actor_entity.dart';
import 'package:client/features/detail_actor/presentation/cubit/detail_actor_cubit.dart';
import 'package:client/features/genre_list/presentation/cubit/genre_list_cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late DetailActorCubit detailActorCubit;
  late MockDetailActorRepositoryImpl repository;

  setUp(() {
    repository = MockDetailActorRepositoryImpl();
    detailActorCubit = DetailActorCubit(repository: repository);
  });

  const testActorID = 123;

  final testDetailActor = DetailActorEntity(
    id: 123,
    name: 'Alex',
    biography: 'actor biography',
    image: 'image.png',
    alsoKnownAs: const [],
    birthday: DateTime(00, 00, 0000),
  );

  test('initial state should be empty', () {
    expect(detailActorCubit.state.actor, DetailActorEntity.empty());
  });

  blocTest<DetailActorCubit, DetailActorState>(
    'should emit [loading == true, listGenre == listTestGenre] and first Genre is GenreEntity all when loadGenreList is called',
    build: () {
      when(repository.getLocalDetailActor(actorID: testActorID))
          .thenAnswer((_) async => right(testDetailActor));
      return detailActorCubit;
    },
    act: (cubit) => cubit.loadActorDetail(actorID: testActorID),
    expect: () => [
      DetailActorState(actor: testDetailActor, loading: true),
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
      const GenreListState(loading: true),
      const GenreListState(failure: Failure.noInternetConnection()),
    ],
  );
}
