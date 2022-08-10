import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../infra/failure/failure.dart';
import '../data_source/movies_datasource.dart';
import '../models/result_year_movies_model.dart';

@injectable
class MoviesRepository {
  final MoviesDataSource _dataSource; //= getIt<MoviesDataSource>();
  MoviesRepository({
    required MoviesDataSource dataSource,
  }) : _dataSource = dataSource;

  Future<Either<Failure, ResultYearMovies>> getYearMovies(String title) async {
    try {
      final response = await _dataSource.getYearMovies(title);
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: 'getYearMovies'));
    }
  }
}
