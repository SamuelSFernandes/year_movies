import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movies/data/data_source/clients/http_client.dart';
import 'package:movies/data/data_source/movies_datasource.dart';
import 'package:movies/data/models/result_year_movies_model.dart';

void main() {
  late HttpClient httpClient;
  late MoviesDataSource dataSource;

  setUp(() {
    httpClient = HttpClient(dio: Dio());
    dataSource = MoviesDataSource(http: httpClient);
  });

  group('test movies datasource', () {
    test('When try get list movies then return a ResultYearMovies', () async {
      final response = await dataSource.getYearMovies('aa');
      expect(response, isA<ResultYearMovies>());
    });
  });
}
