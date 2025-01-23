import 'package:btz/features/home/data/models/equipamento_model.dart';

sealed class AdministracaoState {}

class LoadingAdmState implements AdministracaoState {
  const LoadingAdmState();
}

class GettedAdmState implements AdministracaoState {
  final List<EquipamentModel> listEquipaments;
  const GettedAdmState(
    this.listEquipaments,
  );
}

class FailureAdmState implements AdministracaoState {
  final String message;
  const FailureAdmState(this.message);
}
