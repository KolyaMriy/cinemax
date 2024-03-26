import 'package:equatable/equatable.dart';

class YouTubeTrailerEntity extends Equatable {
  final String name;
  final String youtubeKey;

  const YouTubeTrailerEntity({
    required this.name,
    required this.youtubeKey,
  });

  factory YouTubeTrailerEntity.empty() =>
      const YouTubeTrailerEntity(name: '', youtubeKey: '');

  @override
  List<Object> get props => [name, youtubeKey];
}
