import 'package:client/core/failure/failure.dart';
import 'package:client/features/genre_list/domain/entity/genre_entity.dart';
import 'package:client/features/genre_list/domain/repositories/genre_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockGenreLocalDataSourceImpl mockLocalDataSource;
  late MockGenreRemoteDataSourceImpl mockRemoteDataSource;
  late GenreRepositoryImpl genreRepository;

  setUp(() {
    mockLocalDataSource = MockGenreLocalDataSourceImpl();
    mockRemoteDataSource = MockGenreRemoteDataSourceImpl();
    genreRepository = GenreRepositoryImpl(
      localDataSource: mockLocalDataSource,
      remoteDataSource: mockRemoteDataSource,
    );
  });

  const testGenres = <GenreEntity>[
    GenreEntity(id: 123, name: 'Horror'),
    GenreEntity(id: 1234, name: 'Comedy'),
  ];

  test(
    'should get genre list from the repository',
    () async {
      //arrange

      when(mockLocalDataSource.getSavedListGenres())
          .thenAnswer((_) => testGenres);
      when(mockRemoteDataSource.getGenreList()).thenAnswer(
        (_) async => testGenres,
      );

      //act
      final result = await genreRepository.getGenreList();

      //assert

      expect(result, const Right<Failure, List<GenreEntity>>(testGenres));
    },
  );
}
