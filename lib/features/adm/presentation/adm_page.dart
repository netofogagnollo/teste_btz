import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:btz/core/entity/equipamento_entity.dart';
import 'package:btz/core/entity/user_entity.dart';
import 'package:btz/core/qr_leitor.dart';
import 'package:btz/core/utils/input_text.dart';
import 'package:btz/core/utils/styles.dart';
import 'package:btz/features/adm/presentation/widget/equipamento_vinculo.dart';
import 'package:btz/features/home/presentation/bloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdmPage extends StatefulWidget {
  const AdmPage({super.key});

  @override
  State<AdmPage> createState() => _AdmPageState();
}

class _AdmPageState extends State<AdmPage> {
  var equipamento = const EquipamentoEntity();
  var nomeEquip = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  UserEntity? userSelect;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => createHomeCubit()..init(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = context.read<HomeCubit>();

          var users = state.users;
          log('${users?.length}');
          return Scaffold(
            appBar: AppBar(
              title: const Text("Administração"),
              leading: IconButton(
                onPressed: () => Beamer.of(context).beamBack(),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ),
            body: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                    child: InputText(
                      controller: nomeEquip,
                      readOnly: true,
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.qr_code_2),
                    label: const Text('Identificar Equipamento'),
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (ctx) => QrLeitor(
                                onTap: () async {
                                  setState(() {});
                                  equipamento = await cubit.buscarEquipamento();
                                  var name = equipamento.name ?? '';
                                  nomeEquip.text = name.toUpperCase();
                                  if (ctx.mounted) {
                                    Navigator.maybePop(ctx);
                                  }
                                },
                              ));
                    },
                  ),
                  if (equipamento.id != null)
                    EquipamentoVinculo(
                      equipamento: equipamento,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (ctx) {
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Selecione um usuário'),
                                    DropdownButtonFormField<UserEntity>(
                                      decoration: Styles().decoration(),
                                      items: users?.map((e) {
                                        return DropdownMenuItem<UserEntity>(
                                          value: e,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                                e.name ?? "".toUpperCase()),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          userSelect = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.maybePop(context);
                                    },
                                    child: const Text('Voltar'),
                                  ),
                                  ElevatedButton(
                                      onPressed: () async {
                                        setState(() {});
                                        equipamento = equipamento.copyWith(
                                          userName: userSelect?.name,
                                          userId: userSelect?.id,
                                        );
                                        await cubit.setVinculoUser(equipamento);
                                        if (context.mounted) {
                                          Navigator.maybePop(context);
                                        }
                                      },
                                      child: const Text('Vincular'))
                                ],
                              );
                            });
                      },
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
