import 'dart:developer';

import 'package:btz/features/home/data/models/equipamento_model.dart';
import 'package:btz/features/home/domain/repository/home_repository.dart';
import 'package:btz/features/home/presentation/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository repository;
  HomeCubit(this.repository) : super(const LoadingHomeState());

  init() async {
    emit(const LoadingHomeState());
    try {
      List<EquipamentModel> listEquipaments =
          await repository.getListEquipaments();
      if (listEquipaments.isNotEmpty) {
        listEquipaments.sort((a, b) => a.name!.compareTo(b.name!));
        emit(GettedHomeState(listEquipaments));
      }
    } catch (e) {
      log('$e');
      emit(FailureHomeState('erro ao buscar equipamentos'));
    }
  }

  void setInventario(EquipamentModel equipamento) {
    var now = DateTime.now();
    var updateEquip = equipamento;
    updateEquip.dataInventario = now;
    if (state is GettedHomeState) {
      var lista = (state as GettedHomeState).listEquipaments;
      lista.removeWhere((e) => e.id == updateEquip.id);
      lista.add(updateEquip);

      emit(GettedHomeState(lista));
    }
  }
}
