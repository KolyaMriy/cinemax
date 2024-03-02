import 'package:equatable/equatable.dart';

class MovieTrailerEntity extends Equatable {
  final String name;
  final String youtubeKey;

  const MovieTrailerEntity({
    required this.name,
    required this.youtubeKey,
  });

  factory MovieTrailerEntity.empty() =>
      const MovieTrailerEntity(name: '', youtubeKey: '');

  @override
  List<Object> get props => [name, youtubeKey];
}
