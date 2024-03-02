abstract class MovieQuery {
  static const String baseUrl = 'https://api.themoviedb.org/3/movie/';
  static const String image = 'https://image.tmdb.org/t/p/w500/';
  static const String queryNowPlaying = 'now_playing';
  static const String queryPopular = 'popular';
  static const String queryTrailer = 'videos';
  static const baseUrlSearch = 'https://api.themoviedb.org/3/search/movie';
  static const String queryRecommendations = 'recommendations';

  static const String genreUrl =
      'https://api.themoviedb.org/3/genre/movie/list?';
  static const String _apikey = 'c539e23e4012f8d6e348b90f577dd3cf';
  static Map<String, dynamic> queryParametersBase = <String, dynamic>{
    'api_key': MovieQuery._apikey
  };
}
