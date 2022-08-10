import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:movies/data/data_source/clients/http_client.dart';

import '../../infra/constants/endpoints.dart';
import '../models/result_year_movies_model.dart';

@injectable
class MoviesDataSource {
  final HttpClient _http;
  MoviesDataSource({
    required HttpClient http,
  }) : _http = http;

  Future<ResultYearMovies> getYearMovies(String title) async {
    try {
      Map<String, dynamic> query = {
        'title': title,
      };

      final response = await _http.get(
        Endpoints.getMoviesYear,
        query: query,
      );
      return ResultYearMovies.fromMap(json.decode(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
