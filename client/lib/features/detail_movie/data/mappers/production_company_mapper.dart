import 'package:client/features/detail_movie/data/dtos/production_company/production_company_dto.dart';
import 'package:client/features/detail_movie/domain/entity/production_company_entity.dart';

extension ProductionCompanyToEntity on ProductionCompanyDTO {
  ProductionCompanyEntity toEntity() => ProductionCompanyEntity(
        id: id,
        logoImage: logoImage,
        name: name,
        country: country,
      );
}

extension ProductionCompanyToDTo on ProductionCompanyEntity {
  ProductionCompanyDTO toDTO() => ProductionCompanyDTO(
        id: id,
        logoImage: logoImage ?? '',
        name: name,
        country: country,
      );
}
