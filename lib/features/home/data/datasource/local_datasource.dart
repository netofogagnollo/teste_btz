import 'package:btz/core/base_local_source.dart';
import 'package:btz/core/data/collections/equipamento_collection.dart';
import 'package:btz/core/data/collections/login_collection.dart';
import 'package:btz/core/data/collections/user_collection.dart';
import 'package:btz/core/entity/equipamento_entity.dart';
import 'package:btz/core/entity/login_entity.dart';
import 'package:btz/core/entity/user_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@LazySingleton(order: 5)
class LocalDatasource extends BaseLocalSource {
  LocalDatasource(super.isar);

  Future<List<EquipamentoEntity>> listaEquipamento() async {
    List<EquipamentoEntity> lista = [];
    try {
      var listaEquip =
          await isar.equipamentoCollections.where().sortByName().findAll();
      for (var equip in listaEquip) {
        var grupoEntity = equipamentoCollectionToEntity(equip);
        lista.add(grupoEntity);
      }

      return lista;
    } catch (e) {
      return [const EquipamentoEntity()];
    }
  }

  Future<EquipamentoEntity> addEquipamento(
      EquipamentoEntity equipamento) async {
    try {
      await isar.writeTxn(() async {
        await isar.equipamentoCollections.delete(equipamento.id!);
        var equipCollection = equipamentoEntityToCollection(equipamento);
        await isar.equipamentoCollections.put(equipCollection);
        var novoEquipamento = equipamentoCollectionToEntity(equipCollection);
        return novoEquipamento;
      });

      return const EquipamentoEntity();
    } catch (e) {
      return const EquipamentoEntity();
    }
  }

  Future<List<UserEntity>> getUsers() async {
    List<UserEntity> lista = [];
    try {
      var listaUsers =
          await isar.userCollections.where().sortByName().findAll();
      for (var user in listaUsers) {
        var grupoEntity = userCollectionToEntity(user);
        lista.add(grupoEntity);
      }

      return lista;
    } catch (e) {
      return const [UserEntity()];
    }
  }

  Future<LoginEntity> getLogin() async {
    try {
      var loginCollection =
          await isar.loginCollections.where().sortByName().findAll();
      var grupoEntity = loginCollectionToEntity(loginCollection.first);

      return grupoEntity;
    } catch (e) {
      return const LoginEntity();
    }
  }
}
