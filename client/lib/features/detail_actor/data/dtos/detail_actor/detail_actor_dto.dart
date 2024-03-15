import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_actor_dto.freezed.dart';
part 'detail_actor_dto.g.dart';

@freezed
class DetailActorDTO with _$DetailActorDTO {
  const factory DetailActorDTO({
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'biography', defaultValue: '') required String biography,
    @JsonKey(name: 'birthday', defaultValue: '') required String birthday,
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'profile_path', defaultValue: '') required String image,
    @JsonKey(name: 'deathday', defaultValue: '') required String deathday,
  }) = _DetailActorDTO;

  factory DetailActorDTO.fromJson(Map<String, dynamic> json) =>
      _$DetailActorDTOFromJson(json);
}
