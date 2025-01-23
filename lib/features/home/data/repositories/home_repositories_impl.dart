import 'package:btz/features/home/data/models/equipamento_model.dart';
import 'package:btz/features/home/domain/repository/home_repository.dart';

class HomeRepositoriesImpl extends HomeRepository {
  @override
  Future<List<EquipamentModel>> getListEquipaments() async {
    final List<EquipamentModel> items = [
      EquipamentModel(
          id: 1,
          name: 'Gerador Elétrico',
          dataInventario: DateTime(2024, 12, 10)),
      EquipamentModel(
          id: 2,
          name: 'Máquina de Solda',
          dataInventario: DateTime(2024, 11, 15)),
      EquipamentModel(
          id: 3,
          name: 'Compressores de Ar',
          dataInventario: DateTime(2024, 10, 5)),
      EquipamentModel(
          id: 4,
          name: 'Cortadora de Plasma',
          dataInventario: DateTime(2024, 09, 21)),
      EquipamentModel(
          id: 5,
          name: 'Elevador Hidráulico',
          dataInventario: DateTime(2024, 08, 18)),
      EquipamentModel(
          id: 6,
          name: 'Motosserra Elétrica',
          dataInventario: DateTime(2024, 07, 30)),
      EquipamentModel(
          id: 7,
          name: 'Politriz Industrial',
          dataInventario: DateTime(2024, 06, 25)),
      EquipamentModel(
          id: 8,
          name: 'Martelete Demolidor',
          dataInventario: DateTime(2024, 05, 10)),
      EquipamentModel(
          id: 9, name: 'Betoneira', dataInventario: DateTime(2024, 04, 15)),
      EquipamentModel(
          id: 10,
          name: 'Furadeira de Impacto',
          dataInventario: DateTime(2024, 03, 20)),
      EquipamentModel(
          id: 11,
          name: 'Máquina de Lavar Alta Pressão',
          dataInventario: DateTime(2024, 02, 14)),
      EquipamentModel(
          id: 12,
          name: 'Sistema de Irrigação Automática',
          dataInventario: DateTime(2024, 01, 30)),
      EquipamentModel(
          id: 13,
          name: 'Escavadeira Hidráulica',
          dataInventario: DateTime(2024, 12, 10)),
      EquipamentModel(
          id: 14,
          name: 'Guindaste Móvel',
          dataInventario: DateTime(2024, 11, 5)),
      EquipamentModel(
          id: 15,
          name: 'Trator de Esteira',
          dataInventario: DateTime(2024, 10, 12)),
      EquipamentModel(
          id: 16, name: 'Caminhão Pipa', dataInventario: DateTime(2023, 09, 1)),
      EquipamentModel(
          id: 17,
          name: 'Rompedor de Solo',
          dataInventario: DateTime(2025, 01, 20)),
      EquipamentModel(
          id: 18,
          name: 'Laser de Nivelamento',
          dataInventario: DateTime(2025, 01, 10)),
      EquipamentModel(
          id: 19,
          name: 'Guindaste de Torre',
          dataInventario: DateTime(2025, 01, 10)),
      EquipamentModel(
          id: 20,
          name: 'Transporte de Betão',
          dataInventario: DateTime(2025, 01, 15)),
    ];

    return items;
  }
}
