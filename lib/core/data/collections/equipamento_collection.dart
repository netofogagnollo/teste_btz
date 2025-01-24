import 'package:btz/core/entity/equipamento_entity.dart';
import 'package:isar/isar.dart';

part 'equipamento_collection.g.dart';

@collection
class EquipamentoCollection {
  Id? id;
  int? equipamentoId;
  String? uuid;
  String? name = '';
  String? userName = '';
  int? userId;
  DateTime? ultimoInventario;
}

EquipamentoCollection equipamentoEntityToCollection(EquipamentoEntity entity) {
  return EquipamentoCollection()
    ..id = entity.id
    ..equipamentoId = entity.equipamentoId
    ..uuid = entity.uuid
    ..name = entity.name
    ..userName = entity.userName
    ..userId = entity.userId
    ..ultimoInventario = entity.ultimoInventario;
}

EquipamentoEntity equipamentoCollectionToEntity(
    EquipamentoCollection collection) {
  return EquipamentoEntity(
    id: collection.id,
    equipamentoId: collection.equipamentoId,
    uuid: collection.uuid,
    name: collection.name,
    userName: collection.userName,
    userId: collection.userId,
    ultimoInventario: collection.ultimoInventario,
  );
}
