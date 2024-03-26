import 'package:client/features/detail_movie/movie_credits/data/data_sources/local/movie_credits_local_data_source.dart';
import 'package:client/features/detail_movie/movie_credits/data/dtos/credits_dto.dart';
import 'package:client/features/detail_movie/movie_credits/data/mappers/credits_mapper.dart';
import 'package:client/features/detail_movie/movie_credits/domain/entity/credits_entity.dart';
import 'package:hive/hive.dart';

class CreditsMovieLocalDataSourceImpl implements CreditsMovieLocalDataSource {
  final Box<CreditsDTO> _box;

  CreditsMovieLocalDataSourceImpl({required Box<CreditsDTO> box}) : _box = box;
  @override
  Future<void> deleteCredits({required int idMovie}) async {
    await _box.delete(idMovie);
  }

  @override
  CreditsEntity getSavedCredits({required int idMovie}) {
    final credits = _box.get(idMovie);
    if (credits != null) {
      return credits.toEntity();
    } else {
      throw Exception('local db is empty');
    }
  }

  @override
  Future<void> saveCredits({
    required CreditsEntity credits,
    required int idMovie,
  }) async {
    await _box.put(idMovie, credits.toDTO());
  }
}
