// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/data_source/clients/http_client.dart' as _i4;
import '../data/data_source/clients/third_modules.dart' as _i9;
import '../data/data_source/movies_datasource.dart' as _i5;
import '../data/repositories/movies_repository.dart' as _i6;
import '../data/use_cases/movies_usecase.dart' as _i7;
import '../presentation/pages/search/controller/search_controller.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio());
  gh.factory<_i4.HttpClient>(() => _i4.HttpClient(dio: get<_i3.Dio>()));
  gh.factory<_i5.MoviesDataSource>(
      () => _i5.MoviesDataSource(http: get<_i4.HttpClient>()));
  gh.factory<_i6.MoviesRepository>(
      () => _i6.MoviesRepository(dataSource: get<_i5.MoviesDataSource>()));
  gh.factory<_i7.MoviesUseCase>(
      () => _i7.MoviesUseCase(repository: get<_i6.MoviesRepository>()));
  gh.singleton<_i8.SearchController>(
      _i8.SearchController(get<_i7.MoviesUseCase>()));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
