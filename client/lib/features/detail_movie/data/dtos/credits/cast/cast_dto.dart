import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_dto.freezed.dart';
part 'cast_dto.g.dart';

@freezed
class CastDTO with _$CastDTO {
  factory CastDTO({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'character', defaultValue: '') required String character,
    @JsonKey(name: 'profile_path', defaultValue: '') required String image,
    @JsonKey(name: 'popularity', defaultValue: 0) required double popularity,
    @JsonKey(name: 'known_for_department', defaultValue: '')
    required String knownForDepartment,
  }) = _CastDTO;

  factory CastDTO.fromJson(Map<String, dynamic> json) =>
      _$CastDTOFromJson(json);
}
