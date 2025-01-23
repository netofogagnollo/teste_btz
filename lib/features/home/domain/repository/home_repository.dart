import 'package:btz/features/home/data/models/equipamento_model.dart';

abstract class HomeRepository {
  Future<List<EquipamentModel>> getListEquipaments();
}
