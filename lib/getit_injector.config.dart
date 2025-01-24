// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:btz/core/database_adapter.dart' as _i377;
import 'package:btz/features/home/data/datasource/local_datasource.dart'
    as _i411;
import 'package:btz/features/home/data/repositories/home_repositories.dart'
    as _i962;
import 'package:btz/features/home/domain/usecases/get_equipamento_usecase.dart'
    as _i401;
import 'package:btz/features/home/domain/usecases/get_login_usecase.dart'
    as _i578;
import 'package:btz/features/home/domain/usecases/get_user_usecase.dart'
    as _i233;
import 'package:btz/features/home/domain/usecases/set_equipamento_usecase.dart'
    as _i687;
import 'package:btz/features/login/data/datasource/local_datasource.dart'
    as _i721;
import 'package:btz/features/login/data/repositories/login_repositories.dart'
    as _i192;
import 'package:btz/features/login/domain/usecases/add_mock_usecase.dart'
    as _i663;
import 'package:btz/features/login/domain/usecases/send_login_usecase.dart'
    as _i514;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:isar/isar.dart' as _i338;

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
    gh.singleton<_i377.DatabaseAdapter>(
        () => _i377.DatabaseAdapter(gh<_i338.Isar>()));
    gh.lazySingleton<_i411.LocalDatasource>(
        () => _i411.LocalDatasource(gh<_i377.DatabaseAdapter>()));
    gh.lazySingleton<_i721.LocalDatasource>(
        () => _i721.LocalDatasource(gh<_i377.DatabaseAdapter>()));
    gh.lazySingleton<_i514.SendLoginUsecase>(
        () => _i514.SendLoginUsecase(gh<_i192.LoginRepositories>()));
    gh.lazySingleton<_i663.AddMockUsecase>(
        () => _i663.AddMockUsecase(gh<_i192.LoginRepositories>()));
    gh.lazySingleton<_i962.HomeRepositories>(
        () => _i962.HomeRepositories(gh<_i411.LocalDatasource>()));
    gh.lazySingleton<_i192.LoginRepositories>(
        () => _i192.LoginRepositories(gh<_i721.LocalDatasource>()));
    gh.lazySingleton<_i401.GetEquipamentoUsecase>(
        () => _i401.GetEquipamentoUsecase(gh<_i962.HomeRepositories>()));
    gh.lazySingleton<_i578.GetLoginUsecase>(
        () => _i578.GetLoginUsecase(gh<_i962.HomeRepositories>()));
    gh.lazySingleton<_i233.GetUserUsecase>(
        () => _i233.GetUserUsecase(gh<_i962.HomeRepositories>()));
    gh.lazySingleton<_i687.SetEquipamentoUsecase>(
        () => _i687.SetEquipamentoUsecase(gh<_i962.HomeRepositories>()));
    return this;
  }
}
