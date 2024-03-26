import 'package:equatable/equatable.dart';

class BackdropMoviesEntity extends Equatable {
  final String image;
  final double width;
  final double heigh;
  final double aspectRatio;

  const BackdropMoviesEntity({
    required this.image,
    required this.width,
    required this.heigh,
    required this.aspectRatio,
  });

  @override
  List<Object> get props => [image, width, heigh, aspectRatio];
}
