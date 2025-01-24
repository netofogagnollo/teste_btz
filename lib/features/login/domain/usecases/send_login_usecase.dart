import 'package:btz/core/entity/login_entity.dart';
import 'package:btz/features/login/data/repositories/login_repositories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(order: 5)
class SendLoginUsecase {
  LoginRepositories repository;
  SendLoginUsecase(this.repository);

  Future<void> call(LoginEntity login) async {
    await repository.setLogin(login);
  }
}
