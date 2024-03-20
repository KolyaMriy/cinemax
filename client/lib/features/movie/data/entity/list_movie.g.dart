// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_movie.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ListMovieEntityAdapter extends TypeAdapter<ListMovieEntity> {
  @override
  final int typeId = 4;

  @override
  ListMovieEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ListMovieEntity(
      movies: (fields[2] as List).cast<MovieEntity>(),
      page: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ListMovieEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.page)
      ..writeByte(2)
      ..write(obj.movies);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListMovieEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
