import 'package:btz/features/login/data/repositories/login_repositories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(order: 5)
class AddMockUsecase {
  LoginRepositories repository;
  AddMockUsecase(this.repository);

  Future<void> call() async {
    await repository.addEquipamento();
  }
}
