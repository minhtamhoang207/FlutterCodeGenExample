// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:code_gen_example/di_example/di_example_injectable.dart'
    as _i571;
import 'package:code_gen_example/features/login/data/data_source/remote/api/login_api.dart'
    as _i771;
import 'package:code_gen_example/features/login/data/repositories/login_repository_impl.dart'
    as _i8;
import 'package:code_gen_example/features/login/domain/repositories/login_repository.dart'
    as _i1014;
import 'package:code_gen_example/features/login/presentation/bloc/login_bloc.dart'
    as _i422;
import 'package:code_gen_example/features/register/data/data_source/remote/api/register_api.dart'
    as _i815;
import 'package:code_gen_example/features/register/data/repositories/register_repository_impl.dart'
    as _i237;
import 'package:code_gen_example/features/register/domain/repositories/register_repository.dart'
    as _i896;
import 'package:code_gen_example/features/register/presentation/bloc/register_bloc.dart'
    as _i411;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i411.RegisterBloc>(() => _i411.RegisterBloc());
    gh.factory<_i422.LoginBloc>(() => _i422.LoginBloc());
    gh.lazySingleton<_i896.RegisterRepository>(
        () => _i237.RegisterRepositoryImpl());
    gh.lazySingleton<_i1014.LoginRepository>(() => _i8.LoginRepositoryImpl());
    gh.lazySingleton<_i571.SpaceFlightNewsApi>(
        () => _i571.SpaceFlightNewsApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i815.RegisterApi>(
        () => _i815.RegisterApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i771.LoginApi>(() => _i771.LoginApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i571.SpaceFlightNewsRepository>(
        () => _i571.SpaceFlightNewsRepository(gh<_i571.SpaceFlightNewsApi>()));
    gh.factory<_i571.GetSpaceFlightNewsUseCase>(() =>
        _i571.GetSpaceFlightNewsUseCase(gh<_i571.SpaceFlightNewsRepository>()));
    return this;
  }
}
