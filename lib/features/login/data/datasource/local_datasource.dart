import 'dart:developer';

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

  Future<void> setLogin(LoginEntity login) async {
    try {
      await isar.writeTxn(() async {
        var all = await isar.loginCollections.where().findAll();
        for (var logs in all) {
          await isar.loginCollections.delete(logs.id!);
        }
        var loginCollection = loginEntityToCollection(login);
        await isar.loginCollections.put(loginCollection);
      });
    } catch (e) {
      log('$e');
    }
  }

  Future<void> addEquipamento() async {
    try {
      addUsers();
      var equips = await isar.equipamentoCollections.where().findAll();
      if (equips.isNotEmpty) {
        for (var equip in equips) {
          await isar.equipamentoCollections.delete(equip.id ?? 0);
        }
      }

      for (var equipamento in equipamentos) {
        await isar.writeTxn(() async {
          if (equipamento.id != null) {
            await isar.equipamentoCollections.delete(equipamento.id!);
          }
          var equipCollection = equipamentoEntityToCollection(equipamento);
          await isar.equipamentoCollections.put(equipCollection);
          equipamentoCollectionToEntity(equipCollection);
        });
      }
    } catch (e) {
      log("$e");
    }
  }

  Future<void> addUsers() async {
    try {
      var users = await isar.userCollections.where().findAll();
      if (users.isNotEmpty) {
        for (var user in users) {
          await isar.userCollections.delete(user.id ?? 0);
        }
      }

      for (var user in usuarios) {
        await isar.writeTxn(() async {
          var userCollection = userEntityToCollection(user);
          await isar.userCollections.put(userCollection);
          userCollectionToEntity(userCollection);
        });
      }
    } catch (e) {
      log("$e");
    }
  }

  final usuarios = [
    const UserEntity(
      name: 'João Silva',
      email: 'joao@example.com',
    ),
    const UserEntity(
      name: 'Maria Oliveira',
      email: 'maria@example.com',
    ),
    const UserEntity(
      name: 'Carlos Pereira',
      email: 'carlos@example.com',
    ),
    const UserEntity(
      name: 'Ana Costa',
      email: 'ana@example.com',
    ),
    const UserEntity(
      name: 'Pedro Santos',
      email: 'pedro@example.com',
    ),
  ];

  final equipamentos = [
    EquipamentoEntity(
        equipamentoId: 1,
        uuid: 'uuid-1',
        name: 'Equipamento 1',
        userName: 'User 1',
        userId: 101,
        ultimoInventario: DateTime(2025, 01, 01)),
    EquipamentoEntity(
        equipamentoId: 2,
        uuid: 'uuid-2',
        name: 'Equipamento 2',
        userName: 'User 2',
        userId: 102,
        ultimoInventario: DateTime(2025, 01, 02)),
    EquipamentoEntity(
        equipamentoId: 3,
        uuid: 'uuid-3',
        name: 'Equipamento 3',
        userName: 'User 3',
        userId: 103,
        ultimoInventario: DateTime(2025, 01, 03)),
    EquipamentoEntity(
        equipamentoId: 4,
        uuid: 'uuid-4',
        name: 'Equipamento 4',
        userName: 'User 4',
        userId: 104,
        ultimoInventario: DateTime(2024, 01, 04)),
    EquipamentoEntity(
      equipamentoId: 5,
      uuid: 'uuid-5',
      name: 'Equipamento 5',
      userName: 'User 5',
      userId: 105,
      ultimoInventario: DateTime(2025, 01, 05),
    ),
  ];
}
