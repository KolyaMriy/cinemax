// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_new_movie_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ListMovieDTOAdapter extends TypeAdapter<ListMovieDTO> {
  @override
  final int typeId = 5;

  @override
  ListMovieDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ListMovieDTO(
      movies: (fields[0] as List?)?.cast<MovieDTO>(),
      page: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ListMovieDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.movies)
      ..writeByte(1)
      ..write(obj.page);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListMovieDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListNewMovieDTOImpl _$$ListNewMovieDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ListNewMovieDTOImpl(
      movies: (json['results'] as List<dynamic>?)
              ?.map((e) => MovieDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$$ListNewMovieDTOImplToJson(
        _$ListNewMovieDTOImpl instance) =>
    <String, dynamic>{
      'results': instance.movies,
      'page': instance.page,
    };
