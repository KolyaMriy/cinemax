// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backdrops_movie_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BackdropMoviesDTOAdapter extends TypeAdapter<BackdropMoviesDTO> {
  @override
  final int typeId = 1;

  @override
  BackdropMoviesDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BackdropMoviesDTO(
      image: fields[1] as String,
      width: fields[2] as double,
      height: fields[3] as double,
      aspectRatio: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, BackdropMoviesDTO obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.width)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.aspectRatio);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BackdropMoviesDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackdropMoviesDTOImpl _$$BackdropMoviesDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BackdropMoviesDTOImpl(
      image: json['file_path'] as String? ?? '',
      width: (json['width'] as num?)?.toDouble() ?? 0,
      height: (json['height'] as num?)?.toDouble() ?? 0,
      aspectRatio: (json['aspect_ratio'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$BackdropMoviesDTOImplToJson(
        _$BackdropMoviesDTOImpl instance) =>
    <String, dynamic>{
      'file_path': instance.image,
      'width': instance.width,
      'height': instance.height,
      'aspect_ratio': instance.aspectRatio,
    };
