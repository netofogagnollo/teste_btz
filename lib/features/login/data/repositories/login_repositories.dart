import 'package:btz/core/entity/login_entity.dart';
import 'package:btz/features/login/data/datasource/local_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(order: 50)
class LoginRepositories {
  final LocalDatasource localDatasource;
  LoginRepositories(this.localDatasource);

  Future<void> setLogin(LoginEntity login) async {
    await localDatasource.setLogin(login);
  }
}
