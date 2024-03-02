import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_company_dto.freezed.dart';
part 'production_company_dto.g.dart';

@freezed
class ProductionCompanyDTO with _$ProductionCompanyDTO {
  ProductionCompanyDTO._();

  factory ProductionCompanyDTO({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'origin_country', defaultValue: '') required String country,
    @JsonKey(name: 'logo_path', defaultValue: '') required String logoImage,
  }) = _ProductionCompanyDTO;

  factory ProductionCompanyDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyDTOFromJson(json);
}
