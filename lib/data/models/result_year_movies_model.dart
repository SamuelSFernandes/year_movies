class ResultYearMovies {
  List<MoviesByYear> moviesByYear;
  int total;
  ResultYearMovies({
    required this.moviesByYear,
    required this.total,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result
        .addAll({'moviesByYear': moviesByYear.map((x) => x.toMap()).toList()});
    result.addAll({'total': total});

    return result;
  }

  factory ResultYearMovies.fromMap(Map<String, dynamic> map) {
    return ResultYearMovies(
      moviesByYear: List<MoviesByYear>.from(
          map['moviesByYear']?.map((x) => MoviesByYear.fromMap(x))),
      total: map['total']?.toInt() ?? 0,
    );
  }
}

class MoviesByYear {
  int year;
  int movies;
  MoviesByYear({
    required this.year,
    required this.movies,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'year': year});
    result.addAll({'movies': movies});

    return result;
  }

  factory MoviesByYear.fromMap(Map<String, dynamic> map) {
    return MoviesByYear(
      year: map['year']?.toInt() ?? 0,
      movies: map['movies']?.toInt() ?? 0,
    );
  }
}
