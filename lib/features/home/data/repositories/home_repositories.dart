import 'package:btz/core/entity/equipamento_entity.dart';
import 'package:btz/core/entity/login_entity.dart';
import 'package:btz/features/home/data/datasource/local_datasource.dart';
import 'package:btz/core/entity/user_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(order: 50)
class HomeRepositories {
  final LocalDatasource localDatasource;
  HomeRepositories(this.localDatasource);

  Future<List<EquipamentoEntity>> getEquipamentos() async {
    return localDatasource.listaEquipamento();
  }

  Future<EquipamentoEntity> setEquipamentos(
      EquipamentoEntity equipamento) async {
    return localDatasource.addEquipamento(equipamento);
  }

  Future<List<UserEntity>> getUsers() async {
    return localDatasource.getUsers();
  }

  Future<LoginEntity> getLogin() async {
    return localDatasource.getLogin();
  }
}
