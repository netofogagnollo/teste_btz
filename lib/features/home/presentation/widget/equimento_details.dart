import 'package:btz/core/entity/equipamento_entity.dart';
import 'package:btz/core/utils/format.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EquimentoDetails extends StatelessWidget {
  final EquipamentoEntity equipamento;
  final Function() onTap;
  const EquimentoDetails(
      {super.key, required this.equipamento, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var verifica = Format().validaData(equipamento.ultimoInventario);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${equipamento.id}'),
                      Text('${equipamento.name}'.toUpperCase()),
                      if (equipamento.ultimoInventario != null)
                        Text(
                          'Último invetário: ${DateFormat('dd/MM/yyyy').format(equipamento.ultimoInventario!)}',
                        ),
                    ],
                  ),
                  if (verifica)
                    ElevatedButton(
                        onPressed: onTap, child: const Text('Novo Inventario')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
