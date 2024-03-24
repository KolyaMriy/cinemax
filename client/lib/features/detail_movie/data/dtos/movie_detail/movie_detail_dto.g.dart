// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieDetailDTOAdapter extends TypeAdapter<MovieDetailDTO> {
  @override
  final int typeId = 10;

  @override
  MovieDetailDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieDetailDTO(
      id: fields[1] as int,
      title: fields[2] as String,
      productionCompanies: (fields[3] as List).cast<ProductionCompanyDTO>(),
      genres: (fields[4] as List).cast<GenreDTO>(),
      originalLanguage: fields[5] as String,
      originalTitle: fields[6] as String,
      description: fields[8] as String,
      popularity: fields[9] as double,
      posterPicture: fields[10] as String,
      backdropPicture: fields[11] as String,
      voteAverage: fields[12] as double,
      voteCount: fields[13] as double,
      runtime: fields[14] as int,
      revenue: fields[15] as double,
      status: fields[16] as String,
      tagline: fields[17] as String,
      releaseDate: fields[18] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MovieDetailDTO obj) {
    writer
      ..writeByte(17)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.productionCompanies)
      ..writeByte(4)
      ..write(obj.genres)
      ..writeByte(5)
      ..write(obj.originalLanguage)
      ..writeByte(6)
      ..write(obj.originalTitle)
      ..writeByte(8)
      ..write(obj.description)
      ..writeByte(9)
      ..write(obj.popularity)
      ..writeByte(10)
      ..write(obj.posterPicture)
      ..writeByte(11)
      ..write(obj.backdropPicture)
      ..writeByte(12)
      ..write(obj.voteAverage)
      ..writeByte(13)
      ..write(obj.voteCount)
      ..writeByte(14)
      ..write(obj.runtime)
      ..writeByte(15)
      ..write(obj.revenue)
      ..writeByte(16)
      ..write(obj.status)
      ..writeByte(17)
      ..write(obj.tagline)
      ..writeByte(18)
      ..write(obj.releaseDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDetailDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailDTOImpl _$$MovieDetailDTOImplFromJson(Map<String, dynamic> json) =>
    _$MovieDetailDTOImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      productionCompanies: (json['production_companies'] as List<dynamic>?)
              ?.map((e) =>
                  ProductionCompanyDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      originalLanguage: json['original_language'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      description: json['overview'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      posterPicture: json['poster_path'] as String? ?? '',
      backdropPicture: json['backdrop_path'] as String? ?? '',
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      voteCount: (json['vote_count'] as num?)?.toDouble() ?? 0.0,
      runtime: json['runtime'] as int? ?? 0,
      revenue: (json['revenue'] as num?)?.toDouble() ?? 0.0,
      status: json['status'] as String? ?? '',
      tagline: json['tagline'] as String? ?? '',
      releaseDate: json['release_date'] as String? ?? '',
    );

Map<String, dynamic> _$$MovieDetailDTOImplToJson(
        _$MovieDetailDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'production_companies': instance.productionCompanies,
      'genres': instance.genres,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.description,
      'popularity': instance.popularity,
      'poster_path': instance.posterPicture,
      'backdrop_path': instance.backdropPicture,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'runtime': instance.runtime,
      'revenue': instance.revenue,
      'status': instance.status,
      'tagline': instance.tagline,
      'release_date': instance.releaseDate,
    };
