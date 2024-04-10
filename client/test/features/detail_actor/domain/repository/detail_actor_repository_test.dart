import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_actor/domain/entity/detail_actor_entity.dart';
import 'package:client/features/detail_actor/domain/repository/detail_actor_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockDetailActorLocalDataSourceImpl mockLocalDataSource;
  late MockDetailActorRemoteDataSourceImpl mockRemoteDataSource;
  late DetailActorRepositoryImpl repository;

  setUp(() {
    mockLocalDataSource = MockDetailActorLocalDataSourceImpl();
    mockRemoteDataSource = MockDetailActorRemoteDataSourceImpl();
    repository = DetailActorRepositoryImpl(
      localDataSource: mockLocalDataSource,
      remoteDataSource: mockRemoteDataSource,
    );
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

  group(
    'test  detail actor repository',
    () {
      test(
        'should get detail actor from the remote Data Source',
        () async {
          //arrange
          when(mockRemoteDataSource.getDetailActor(actorID: testActorID))
              .thenAnswer(
            (_) async => testDetailActor,
          );

          final result =
              await repository.getRemoteDetailActor(actorID: testActorID);
          //assert
          expect(result,
              equals(right<Failure, DetailActorEntity>(testDetailActor)));
        },
      );
      test(
        'should get detail actor from the local Data Source',
        () async {
          //arrange
          when(mockLocalDataSource.getSavedDetailActor(actorID: testActorID))
              .thenAnswer(
            (_) => testDetailActor,
          );
          //act
          final result =
              await repository.getLocalDetailActor(actorID: testActorID);
          //assert
          expect(result,
              equals(right<Failure, DetailActorEntity>(testDetailActor)));
        },
      );

      test(
        'should delete detail actor from the local Data Source',
        () {
          //arrange
          when(mockLocalDataSource.deleteDetailActor(actorID: testActorID))
              .thenAnswer(
            (_) => right<Failure, void>(null),
          );
          //act
          final result = repository.deleteDetailActor(actorID: testActorID);
          //assert
          expect(result, equals(right<Failure, void>(null)));
        },
      );

      test(
        'should save detail actor from the local Data Source',
        () {
          //arrange
          when(mockLocalDataSource.saveDetailActor(
                  detailActor: testDetailActor))
              .thenAnswer(
            (_) => right<Failure, void>(null),
          );
          //act
          final result =
              repository.saveDetailActor(detailActor: testDetailActor);
          //assert
          expect(result, equals(right<Failure, void>(null)));
        },
      );
    },
  );
}
