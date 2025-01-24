import 'package:btz/core/entity/equipamento_entity.dart';
import 'package:btz/features/home/data/repositories/home_repositories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(order: 50)
class SetEquipamentoUsecase {
  final HomeRepositories repository;
  SetEquipamentoUsecase(this.repository);

  Future<EquipamentoEntity>? call(EquipamentoEntity equipamento) async {
    var result = await repository.setEquipamentos(equipamento);
    return result;
  }
}
