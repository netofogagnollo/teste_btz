import 'package:btz/features/home/data/models/equipamento_model.dart';
import 'package:btz/routes/home_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class EquipamentoDetails extends StatelessWidget {
  final EquipamentModel? equipamento;

  const EquipamentoDetails({
    super.key,
    this.equipamento,
  });

  @override
  Widget build(BuildContext context) {
    var isNewInventory = isLastInventory(equipamento!.dataInventario);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 220.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cod.: ${equipamento?.id}',
                ),
                Text(
                  'Nome: ${equipamento?.name}',
                ),
                Text(
                  'Ultimo inventário: ${DateFormat('dd/MM/yyyy').format(equipamento!.dataInventario!)} ',
                ),
              ],
            ),
          ),
          if (!isNewInventory)
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed(
                  HomeModule.QR,
                  arguments: {
                    'equipamento': equipamento,
                  },
                );
              },
              child: Text('Novo inventario'),
            ),
        ],
      ),
    );
  }
}

bool isLastInventory(DateTime? lastInventory) {
  if (lastInventory == null) {
    return false;
  }
  DateTime now = DateTime.now();
  Duration difference = now.difference(lastInventory);
  return difference.inDays <= 30;
}
