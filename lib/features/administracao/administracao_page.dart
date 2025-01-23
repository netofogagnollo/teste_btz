import 'dart:async';

import 'package:btz/core/theme/dropdown_style.dart';
import 'package:btz/features/administracao/presentation/bloc/administracao_cubit.dart';
import 'package:btz/features/administracao/presentation/bloc/administracao_state.dart';
import 'package:btz/features/home/presentation/bloc/home_cubit.dart';
import 'package:btz/features/home/presentation/bloc/home_state.dart';
import 'package:btz/features/login/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AdministracaoPage extends StatefulWidget {
  const AdministracaoPage({super.key});

  @override
  State<AdministracaoPage> createState() => _HomePageState();
}

class _HomePageState extends State<AdministracaoPage> {
  late StreamSubscription streamSubscription;

  @override
  void initState() {
    super.initState();
    var cubit = Modular.get<AdministracaoCubit>();
    streamSubscription = cubit.stream.listen((state) {
      if (state is FailureAdmState) {
        showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const Text('Erro'),
              content: Text(state.message),
            );
          },
        );
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      cubit.init();
    });
  }

  @override
  void dispose() {
    streamSubscription.cancel();
    super.dispose();
  }

  Widget body = Container();
  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<HomeCubit>((cubit) => cubit.stream);
    var state = cubit.state;

    if (state is LoadingHomeState) {
      body = const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (state is GettedHomeState) {
      // var equipamentos = state.listEquipaments;
      body = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: equipamentos.length,
          //     itemBuilder: (context, index) {
          //       var equipamento = equipamentos[index];
          //       return EquipamentoDetails(
          //         equipamento: equipamento,
          //       );
          //     },
          //   ),
          // )
        ],
      );
    }
    var formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: Text('Administração'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Modular.to.pushNamed('qrcode');
            showDialog(
                context: context,
                builder: (ctx) => Form(
                      key: formKey,
                      child: AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Vincular usuário ao equipamento'),
                            DropdownButtonFormField(
                                decoration: DropdownStyle().decoration(),
                                validator: (value) {
                                  if (value == null) {
                                    return 'Selecione um usuario';
                                  }
                                  return null;
                                },
                                items: users.map((e) {
                                  return DropdownMenuItem<int>(
                                    value: e.id,
                                    child: Text(e.name ?? ''),
                                  );
                                }).toList(),
                                onChanged: (value) {}),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Modular.to.pop();
                            },
                            child: Text('Voltar'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Modular.to.pop();
                              }
                            },
                            child: Text('Vincular'),
                          ),
                        ],
                      ),
                    ));
          },
          child: Icon(Icons.qr_code_2_outlined),
        ),
        body: body);
  }
}

final List<UserModel> users = [
  UserModel(
    id: 1,
    name: 'João Silva',
    email: 'joao.silva@email.com',
    lastLogin: DateTime(2025, 01, 10),
  ),
  UserModel(
    id: 2,
    name: 'Maria Oliveira',
    email: 'maria.oliveira@email.com',
    lastLogin: DateTime(2025, 01, 15),
  ),
  UserModel(
    id: 3,
    name: 'Carlos Souza',
    email: 'carlos.souza@email.com',
    lastLogin: DateTime(2025, 01, 18),
  ),
  UserModel(
    id: 4,
    name: 'Ana Costa',
    email: 'ana.costa@email.com',
    lastLogin: DateTime(2025, 01, 20),
  ),
  UserModel(
    id: 5,
    name: 'Pedro Almeida',
    email: 'pedro.almeida@email.com',
    lastLogin: DateTime(2025, 01, 22),
  ),
];
