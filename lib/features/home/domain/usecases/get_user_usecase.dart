import 'package:btz/core/entity/user_entity.dart';
import 'package:btz/features/home/data/repositories/home_repositories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(order: 50)
class GetUserUsecase {
  final HomeRepositories repository;
  GetUserUsecase(this.repository);

  Future<List<UserEntity>>? call() async {
    var result = await repository.getUsers();
    return result;
  }
}
