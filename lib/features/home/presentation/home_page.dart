import 'package:btz/core/qr_leitor.dart';
import 'package:btz/features/home/presentation/bloc/home_cubit.dart';
import 'package:btz/features/home/presentation/widget/custom_drawer.dart';
import 'package:btz/features/home/presentation/widget/equimento_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => createHomeCubit()..init(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = context.read<HomeCubit>();
          return Scaffold(
              appBar: AppBar(title: const Text("Home")),
              drawer: const CustomDrawer(),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Center(
                      child: Text(
                        'Lista de Equipamentos'.toUpperCase(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: state.equipamentos?.length,
                        itemBuilder: (context, index) {
                          var equipamento = state.equipamentos?[index];
                          if (equipamento != null) {
                            return EquimentoDetails(
                              equipamento: equipamento,
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return QrLeitor(
                                        onTap: () async {
                                          await cubit
                                              .setInventario(equipamento);
                                          if (context.mounted) {
                                            Navigator.maybePop(context);
                                          }
                                        },
                                      );
                                    });
                              },
                            );
                          }
                          return null;
                        }),
                  )
                ],
              ));
        },
      ),
    );
  }
}
