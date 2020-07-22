class Movie {
  final int id;
  final double popularity;
  final String title;
  final String backPosterPath;
  final String posterPath;
  final String overview;
  final double voteAverage;

  Movie(this.id, this.popularity, this.title, this.backPosterPath, this.posterPath,
      this.overview, this.voteAverage);

  Movie.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        popularity = json["popularity"].toDouble(),
        title = json["title"],
        backPosterPath = json["backdrop_path"],
        posterPath = json["poster_path"],
        overview = json["overview"],
        voteAverage = json["vote_average"].toDouble();
}
