class MovieCardModel {
  final String posterPicture;
  final double averageRating;
  final String title;
  String? genre;

  MovieCardModel({
    required this.posterPicture,
    required this.averageRating,
    required this.title,
    this.genre,
  });
}
