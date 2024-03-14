import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew_dto.freezed.dart';
part 'crew_dto.g.dart';

@freezed
class CrewDTO with _$CrewDTO {
  factory CrewDTO({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'job', defaultValue: '') required String job,
    @JsonKey(name: 'department', defaultValue: '') required String department,
    @JsonKey(name: 'profile_path', defaultValue: '') required String image,
    @JsonKey(name: 'popularity', defaultValue: 0) required double popularity,
    @JsonKey(name: 'known_for_department', defaultValue: '')
    required String knownForDepartment,
  }) = _CrewDTO;

  factory CrewDTO.fromJson(Map<String, dynamic> json) =>
      _$CrewDTOFromJson(json);
}
