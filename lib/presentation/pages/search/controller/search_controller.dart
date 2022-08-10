import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../data/models/result_year_movies_model.dart';
import '../../../../data/use_cases/movies_usecase.dart';

part 'search_controller.g.dart';

@singleton
// ignore: library_private_types_in_public_api
class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  final MoviesUseCase _moviesUseCase;
  _SearchControllerBase(this._moviesUseCase);

  @observable
  ObservableList<MoviesByYear> listMoviesByYear = ObservableList();

  @observable
  bool isLoading = false;

  @observable
  bool isOrderAsceding = false;

  @observable
  bool isOrderSmallest = false;

  @observable
  int? totalMovies;

  final TextEditingController searchController = TextEditingController();

  Future<void> getMoviesByYear() async {
    isLoading = true;
    listMoviesByYear.clear();
    final response = await _moviesUseCase.getYearMovies(searchController.text);
    final result = response.fold((l) => null, (r) => r);
    if (result != null) {
      listMoviesByYear.addAll(result.moviesByYear);
      totalMovies = result.total;
    }
    isLoading = false;
  }

  void sortByDescending() async {
    isOrderAsceding = true;
    listMoviesByYear.sort((a, b) => b.year.compareTo(a.year));
  }

  void sortByAscending() async {
    isOrderAsceding = false;
    listMoviesByYear.sort((a, b) => a.year.compareTo(b.year));
  }

  void sortByLargestMovies() async {
    isOrderSmallest = true;
    listMoviesByYear.sort((a, b) => a.movies.compareTo(b.movies));
  }

  void sortBySmallestMovies() async {
    isOrderSmallest = false;
    listMoviesByYear.sort((a, b) => b.movies.compareTo(a.movies));
  }
}
