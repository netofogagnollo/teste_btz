import 'package:btz/core/entity/equipamento_entity.dart';
import 'package:btz/features/home/data/repositories/home_repositories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(order: 50)
class GetEquipamentoUsecase {
  final HomeRepositories repository;
  GetEquipamentoUsecase(this.repository);

  Future<List<EquipamentoEntity>>? call() async {
    var result = await repository.getEquipamentos();
    return result;
  }
}
