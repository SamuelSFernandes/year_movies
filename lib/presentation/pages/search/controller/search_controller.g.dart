// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchController on _SearchControllerBase, Store {
  late final _$listMoviesByYearAtom =
      Atom(name: '_SearchControllerBase.listMoviesByYear', context: context);

  @override
  ObservableList<MoviesByYear> get listMoviesByYear {
    _$listMoviesByYearAtom.reportRead();
    return super.listMoviesByYear;
  }

  @override
  set listMoviesByYear(ObservableList<MoviesByYear> value) {
    _$listMoviesByYearAtom.reportWrite(value, super.listMoviesByYear, () {
      super.listMoviesByYear = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_SearchControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isOrderAscedingAtom =
      Atom(name: '_SearchControllerBase.isOrderAsceding', context: context);

  @override
  bool get isOrderAsceding {
    _$isOrderAscedingAtom.reportRead();
    return super.isOrderAsceding;
  }

  @override
  set isOrderAsceding(bool value) {
    _$isOrderAscedingAtom.reportWrite(value, super.isOrderAsceding, () {
      super.isOrderAsceding = value;
    });
  }

  late final _$isOrderSmallestAtom =
      Atom(name: '_SearchControllerBase.isOrderSmallest', context: context);

  @override
  bool get isOrderSmallest {
    _$isOrderSmallestAtom.reportRead();
    return super.isOrderSmallest;
  }

  @override
  set isOrderSmallest(bool value) {
    _$isOrderSmallestAtom.reportWrite(value, super.isOrderSmallest, () {
      super.isOrderSmallest = value;
    });
  }

  late final _$totalMoviesAtom =
      Atom(name: '_SearchControllerBase.totalMovies', context: context);

  @override
  int? get totalMovies {
    _$totalMoviesAtom.reportRead();
    return super.totalMovies;
  }

  @override
  set totalMovies(int? value) {
    _$totalMoviesAtom.reportWrite(value, super.totalMovies, () {
      super.totalMovies = value;
    });
  }

  @override
  String toString() {
    return '''
listMoviesByYear: ${listMoviesByYear},
isLoading: ${isLoading},
isOrderAsceding: ${isOrderAsceding},
isOrderSmallest: ${isOrderSmallest},
totalMovies: ${totalMovies}
    ''';
  }
}
