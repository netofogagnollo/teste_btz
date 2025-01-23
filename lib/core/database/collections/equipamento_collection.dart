import 'package:btz/features/home/data/models/equipamento_model.dart';
import 'package:isar/isar.dart';

part 'equipamento_collection.g.dart';

@collection
class EquipamentoCollection {
  Id id = Isar.autoIncrement;
  String? name;
  DateTime? dataInventario;
  String? userName;
  DateTime? ultimaAlteracao;
}

EquipamentoCollection equipamentoModelToCollection(EquipamentModel model) {
  return EquipamentoCollection()
    ..id = model.id!
    ..name = model.name
    ..dataInventario = model.dataInventario
    ..userName = model.userName;
}

EquipamentModel equipamentoCollectionToModel(EquipamentoCollection collection) {
  return EquipamentModel(
    id: collection.id,
    name: collection.name,
    dataInventario: collection.dataInventario,
    userName: collection.userName,
  );
}
