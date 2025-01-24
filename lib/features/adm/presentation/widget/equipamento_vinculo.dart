import 'package:btz/core/entity/equipamento_entity.dart';
import 'package:flutter/material.dart';

class EquipamentoVinculo extends StatelessWidget {
  final Function() onTap;
  final EquipamentoEntity equipamento;
  const EquipamentoVinculo(
      {super.key, required this.onTap, required this.equipamento});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${equipamento.id}.: ${equipamento.name}'
                          .toUpperCase()),
                      Text((equipamento.userName ?? 'Sem usuario vinculado')
                          .toUpperCase()),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: onTap,
                    child: const Text(
                      'Vincular',
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
