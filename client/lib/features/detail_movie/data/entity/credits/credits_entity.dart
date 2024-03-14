import 'package:client/features/detail_movie/data/entity/credits/cast/cast_entity.dart';
import 'package:client/features/detail_movie/data/entity/credits/crew/crew_entity.dart';
import 'package:equatable/equatable.dart';

class CreditsEntity extends Equatable {
  final List<CrewEntity> crew;
  final List<CastEntity> cast;

  const CreditsEntity({
    required this.crew,
    required this.cast,
  });

  @override
  List<Object> get props => [crew, cast];
}
