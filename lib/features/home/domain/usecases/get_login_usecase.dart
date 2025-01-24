import 'package:btz/core/entity/login_entity.dart';
import 'package:btz/features/home/data/repositories/home_repositories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(order: 50)
class GetLoginUsecase {
  final HomeRepositories repository;
  GetLoginUsecase(this.repository);

  Future<LoginEntity> call() async {
    var result = await repository.getLogin();
    return result;
  }
}
