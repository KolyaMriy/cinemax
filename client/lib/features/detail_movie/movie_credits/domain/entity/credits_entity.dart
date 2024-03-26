import 'package:client/features/detail_movie/movie_credits/domain/entity/cast/cast_entity.dart';
import 'package:client/features/detail_movie/movie_credits/domain/entity/crew/crew_entity.dart';
import 'package:equatable/equatable.dart';

class CreditsEntity extends Equatable {
  final List<CrewEntity> crew;
  final List<CastEntity> cast;

  const CreditsEntity({
    required this.crew,
    required this.cast,
  });

  factory CreditsEntity.empty() => const CreditsEntity(
        cast: [],
        crew: [],
      );

  @override
  List<Object> get props => [crew, cast];
}
