import 'package:bloc_test/bloc_test.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/genre_list/domain/entity/genre_entity.dart';
import 'package:client/features/genre_list/presentation/cubit/genre_list_cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/test_helpers.mocks.dart';

void main() {
  late GenreListCubit genreListCubit;
  late MockGenreRepositoryImpl repository;

  setUp(() {
    repository = MockGenreRepositoryImpl();
    genreListCubit = GenreListCubit(repository: repository);
  });

  const listTestGenre = <GenreEntity>[
    GenreEntity(id: 123, name: 'Horror'),
    GenreEntity(id: 123, name: 'Comedy'),
  ];

  test('initial state should be empty list', () {
    expect(genreListCubit.state.listGenre, <GenreEntity>[]);
  });

  blocTest<GenreListCubit, GenreListState>(
    'should emit [loading == true, listGenre == listTestGenre] and first Genre is GenreEntity all when loadGenreList is called',
    build: () {
      when(repository.getGenreList())
          .thenAnswer((_) async => right(listTestGenre));
      return genreListCubit;
    },
    act: (cubit) => cubit.loadGenreList(),
    expect: () => [
      const GenreListState(loading: true),
      const GenreListState(
          listGenre: [GenreEntity(id: 0, name: 'All'), ...listTestGenre]),
    ],
  );

  blocTest<GenreListCubit, GenreListState>(
    'should emit [failure internet connection] when loadGenreList is called',
    build: () {
      when(repository.getGenreList())
          .thenAnswer((_) async => const Left(Failure.noInternetConnection()));
      return genreListCubit;
    },
    act: (cubit) => cubit.loadGenreList(),
    expect: () => [
      const GenreListState(loading: true),
      const GenreListState(failure: Failure.noInternetConnection()),
    ],
  );
}
