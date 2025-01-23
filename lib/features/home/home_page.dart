import 'dart:async';

import 'package:btz/features/home/presentation/bloc/home_cubit.dart';
import 'package:btz/features/home/presentation/bloc/home_state.dart';
import 'package:btz/features/home/presentation/widgets/custom_drawer.dart';
import 'package:btz/features/home/presentation/widgets/equipamento_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late StreamSubscription streamSubscription;

  @override
  void initState() {
    super.initState();
    var cubit = Modular.get<HomeCubit>();
    streamSubscription = cubit.stream.listen((state) {
      if (state is FailureHomeState) {
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
      var equipamentos = state.listEquipaments;
      body = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: equipamentos.length,
              itemBuilder: (context, index) {
                var equipamento = equipamentos[index];
                return EquipamentoDetails(
                  equipamento: equipamento,
                );
              },
            ),
          )
        ],
      );
    }
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Listagem de equipamentos'),
        ),
        body: body);
  }
}
