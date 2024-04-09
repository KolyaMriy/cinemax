// import 'package:client/features/detail_actor/data/dtos/detail_actor/detail_actor_dto.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// import '../../../helpers/test_helpers.mocks.dart';

// class DioAdapterMock extends Mock implements HttpClientAdapter {}

// void main() async {
//   late MockDetailActorRemoteDataSourceImpl mockRemoteDataSource;
//   late DioAdapterMock dioAdapterMock;

//   setUp(() {
//     mockRemoteDataSource = MockDetailActorRemoteDataSourceImpl();
//     dioAdapterMock = DioAdapterMock();
//   });

//   const testActorID = 143;
//   const testDetailActorDTO = DetailActorDTO(
//     id: 123,
//     name: 'Alex',
//     biography: 'actor biography',
//     birthday: '00-00-0000',
//     deathday: '00-00-0000',
//     image: 'image.png',
//     alsoKnownAs: [],
//   );

//   group(
//     'test remote data source',
//     () {
//       test('description', () {
//         when(dioAdapterMock.fetch(any, any, any))
//             .thenAnswer((_) async => 'httpResponse');
//       });
//     },
//   );
// }
