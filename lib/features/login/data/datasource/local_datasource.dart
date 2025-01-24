import 'dart:developer';

import 'package:btz/core/base_local_source.dart';
import 'package:btz/core/data/collections/login_collection.dart';
import 'package:btz/core/entity/login_entity.dart';
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
}
