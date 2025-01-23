import 'dart:developer';

import 'package:btz/features/administracao/presentation/bloc/administracao_state.dart';
import 'package:btz/features/home/data/models/equipamento_model.dart';
import 'package:btz/features/home/domain/repository/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdministracaoCubit extends Cubit<AdministracaoState> {
  final HomeRepository repository;
  AdministracaoCubit(this.repository) : super(const LoadingAdmState());

  init() async {
    emit(const LoadingAdmState());
    try {
      List<EquipamentModel> listEquipaments =
          await repository.getListEquipaments();
      if (listEquipaments.isNotEmpty) {
        listEquipaments.sort((a, b) => a.name!.compareTo(b.name!));
        emit(GettedAdmState(listEquipaments));
      }
    } catch (e) {
      log('$e');
      emit(FailureAdmState('erro ao buscar equipamentos'));
    }
  }

  void setInventario(EquipamentModel equipamento) {
    var now = DateTime.now();
    var updateEquip = equipamento;
    updateEquip.dataInventario = now;
    if (state is GettedAdmState) {
      var lista = (state as GettedAdmState).listEquipaments;
      lista.removeWhere((e) => e.id == updateEquip.id);
      lista.add(updateEquip);

      emit(GettedAdmState(lista));
    }
  }
}
