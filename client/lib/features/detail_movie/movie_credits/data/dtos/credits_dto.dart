import 'package:client/features/detail_movie/movie_credits/data/dtos/cast/cast_dto.dart';
import 'package:client/features/detail_movie/movie_credits/data/dtos/crew/crew_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'credits_dto.freezed.dart';
part 'credits_dto.g.dart';

@HiveType(typeId: 8)
@freezed
class CreditsDTO with _$CreditsDTO {
  factory CreditsDTO({
    @HiveField(1)
    @JsonKey(name: 'cast', defaultValue: [])
    required List<CastDTO> cast,
    @HiveField(2)
    @JsonKey(name: 'crew', defaultValue: [])
    required List<CrewDTO> crew,
  }) = _CreditsDTO;

  factory CreditsDTO.fromJson(Map<String, dynamic> json) =>
      _$CreditsDTOFromJson(json);
}
