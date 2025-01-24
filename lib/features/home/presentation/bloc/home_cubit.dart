import 'package:btz/core/base_cubit.dart';
import 'package:btz/core/entity/equipamento_entity.dart';
import 'package:btz/core/entity/login_entity.dart';
import 'package:btz/features/home/domain/usecases/get_equipamento_usecase.dart';
import 'package:btz/core/entity/user_entity.dart';
import 'package:btz/features/home/domain/usecases/get_login_usecase.dart';
import 'package:btz/features/home/domain/usecases/get_user_usecase.dart';
import 'package:btz/features/home/domain/usecases/set_equipamento_usecase.dart';
import 'package:btz/injection_container.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'home_state.dart';

HomeCubit createHomeCubit() {
  return HomeCubit(
    sl(),
    sl(),
    sl(),
    sl(),
  );
}

class HomeCubit extends BaseCubit<HomeState> {
  final GetEquipamentoUsecase getEquipamentoUsecase;
  final SetEquipamentoUsecase setEquipamentoUsecase;
  final GetLoginUsecase getLoginUsecase;
  final GetUserUsecase getUserUsecase;
  HomeCubit(
    this.setEquipamentoUsecase,
    this.getEquipamentoUsecase,
    this.getLoginUsecase,
    this.getUserUsecase,
  ) : super(const HomeState());

  init() async {
    var users = await getUserUsecase();
    var lista = await getEquipamentoUsecase();
    var login = await getLoginUsecase();

    e(state.copyWith(
      status: () => Status.loaded,
      equipamentos: lista,
      usuario: login,
      users: users,
    ));
  }

  Future<EquipamentoEntity> buscarEquipamento() async {
    return state.equipamentos!.first;
  }

  Future<void> setInventario(EquipamentoEntity equipamento) async {
    var now = DateTime.now();
    var updateEquipamento = equipamento.copyWith(ultimoInventario: now);
    await setEquipamentoUsecase(updateEquipamento);
    var lista = await getEquipamentoUsecase();

    e(state.copyWith(
      equipamentos: lista,
    ));
  }

  Future<EquipamentoEntity> setVinculoUser(
      EquipamentoEntity equipamento) async {
    var updateEquipamento = equipamento;
    var equip = await setEquipamentoUsecase(updateEquipamento);
    var lista = await getEquipamentoUsecase();

    e(state.copyWith(
      equipamentos: lista,
    ));
    return equip!;
  }
}
