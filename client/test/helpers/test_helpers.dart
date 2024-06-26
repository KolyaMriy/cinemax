import 'package:client/features/detail_actor/data/data_sources/local/detail_actor_local_datasource_impl.dart';
import 'package:client/features/detail_actor/data/data_sources/remote/detail_actor_remote_datasource_impl.dart';
import 'package:client/features/detail_actor/domain/repository/detail_actor_repository_impl.dart';
import 'package:client/features/genre_list/data/data_source/local/genre_local_datasource_impl.dart';
import 'package:client/features/genre_list/data/data_source/remote/genre_remote_datasource_impl.dart';
import 'package:client/features/genre_list/domain/repositories/genre_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  GenreRepositoryImpl,
  GenreLocalDataSourceImpl,
  GenreRemoteDataSourceImpl,
  DetailActorRemoteDataSourceImpl,
  DetailActorLocalDataSourceImpl,
  DetailActorRepositoryImpl,
  Dio,
])
void main() {}
