import 'package:client/features/detail_movie/data/dtos/credits/cast/cast_dto.dart';
import 'package:client/features/detail_movie/data/dtos/credits/crew/crew_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credits_dto.freezed.dart';
part 'credits_dto.g.dart';

@freezed
class CreditsDTO with _$CreditsDTO {
  factory CreditsDTO({
    @JsonKey(name: 'cast', defaultValue: []) required List<CastDTO> cast,
    @JsonKey(name: 'crew', defaultValue: []) required List<CrewDTO> crew,
  }) = _CreditsDTO;

  factory CreditsDTO.fromJson(Map<String, dynamic> json) =>
      _$CreditsDTOFromJson(json);
}
