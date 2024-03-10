class MovieCardModel {
  final String posterPicture;
  final double averageRating;
  final String title;
  List<String>? genres;

  MovieCardModel({
    this.genres,
    required this.posterPicture,
    required this.averageRating,
    required this.title,
  });
}
