// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source/remote/authentication_services.dart' as _i3;
import '../../data/data_source/remote/home_services.dart' as _i4;
import '../../data/repository_impl/authentication_repository_impl.dart' as _i6;
import '../../data/repository_impl/home_repository_impl.dart' as _i9;
import '../../domain/repositories/authentication_repository.dart' as _i5;
import '../../domain/repositories/home_screen_repository.dart' as _i8;
import '../../domain/usecase/authentication_usecase.dart' as _i7;
import '../../domain/usecase/home_screen_usecase.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthenticationServices>(() => _i3.AuthenticationServices());
  gh.factory<_i4.HomeServices>(() => _i4.HomeServices());
  gh.factory<_i5.AuthenticationRepository>(() =>
      _i6.AuthenticationRepositoryImpl(get<_i3.AuthenticationServices>()));
  gh.factory<_i7.AuthenticationUseCase>(
      () => _i7.AuthenticationUseCase(get<_i5.AuthenticationRepository>()));
  gh.factory<_i8.HomeScreenRepository>(
      () => _i9.HomeScreenRepositoryImpl(get<_i4.HomeServices>()));
  gh.factory<_i10.HomeScreenUseCase>(
      () => _i10.HomeScreenUseCase(get<_i8.HomeScreenRepository>()));
  return get;
}
