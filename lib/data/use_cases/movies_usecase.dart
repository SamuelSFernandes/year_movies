import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../infra/failure/failure.dart';
import '../models/result_year_movies_model.dart';
import '../repositories/movies_repository.dart';

@injectable
class MoviesUseCase {
  final MoviesRepository _repository;
  MoviesUseCase({required MoviesRepository repository})
      : _repository = repository;

  Future<Either<Failure, ResultYearMovies>> getYearMovies(String title) async {
    return _repository.getYearMovies(title);
  }
}
