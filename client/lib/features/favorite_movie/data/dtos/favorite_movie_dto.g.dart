// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_movie_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteMovieDTOAdapter extends TypeAdapter<FavoriteMovieDTO> {
  @override
  final int typeId = 11;

  @override
  FavoriteMovieDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteMovieDTO(
      movie: fields[1] as MovieDTO?,
      createdAt: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteMovieDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.movie)
      ..writeByte(2)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteMovieDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteMovieDTOImpl _$$FavoriteMovieDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteMovieDTOImpl(
      movie: json['movie'] == null
          ? null
          : MovieDTO.fromJson(json['movie'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? DateTime.now()
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$FavoriteMovieDTOImplToJson(
        _$FavoriteMovieDTOImpl instance) =>
    <String, dynamic>{
      'movie': instance.movie,
      'createdAt': instance.createdAt.toIso8601String(),
    };
